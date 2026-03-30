local M = {}

M.open_minesweeper = function()
	local handle = io.popen("node -v")
	local result = handle:read("*a")
	handle:close()

	local major_version = tonumber(result:match("v(%d+)"))
	if major_version and major_version < 20 then
		vim.notify("Minesweeper-TUI requires Node.js v20 or higher. Current: " .. result, vim.log.levels.ERROR)
		return
	end

	local buf = vim.api.nvim_create_buf(false, true)

	local width = math.ceil(vim.o.columns * 0.9)
	local height = math.ceil(vim.o.lines * 0.9)
	local row = math.ceil((vim.o.lines - height) / 2) - 1
	local col = math.ceil((vim.o.columns - width) / 2)

	local opts = {
		relative = "editor",
		row = row,
		col = col,
		width = width,
		height = height,
		style = "minimal",
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, opts)

	vim.fn.termopen("npx -y minesweeper-tui@latest")

	vim.cmd("startinsert")

	vim.api.nvim_create_autocmd("TermClose", {
		buffer = buf,
		callback = function()
			vim.api.nvim_win_close(win, true)
		end,
	})
end

M.setup = function(opts)
	vim.api.nvim_create_user_command("Minesweeper", function()
		M.open_minesweeper()
	end, { desc = "Play Minesweeper TUI" })
end

return M
