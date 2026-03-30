# minesweeper.nvim

[![Neovim](https://img.shields.io/badge/Neovim-%2357A143.svg?style=flat&logo=neovim&logoColor=white)](https://neovim.io)
[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=flat&logo=lua&logoColor=white)](https://www.lua.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Play the **Minesweeper** directly inside your Neovim in a beautiful floating window. This is a Neovim wrapper for the [minesweeper-tui](https://github.com/Pansther/minesweeper-tui) engine.

![cover](https://raw.githubusercontent.com/Pansther/minesweeper.nvim/main/cover.gif)

## Features

- **Floating Window:** Seamlessly integrated into your Neovim workflow.
- **Vim-friendly:** Full `h/j/k/l` navigation support.
- **Themeable:** Supports various themes like Catppuccin, Gruvbox, Nord, and more.
- **Auto-install:** Powered by `npx`, so you can start playing immediately without manual binary management.

## Prerequisites

- **Neovim**: v0.9.0 or higher.
- **Node.js**: v20.0.0 or higher.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
  "Pansther/minesweeper.nvim",
  cmd = "Minesweeper",
  keys = {
    { "<leader>ms", "<cmd>Minesweeper<cr>", desc = "Play Minesweeper" },
  },
  config = function()
    require("minesweeper").setup()
  end,
}
```

## Usage

Simply run the following command or use your defined keymap, more details at [minesweeper-tui](https://github.com/Pansther/minesweeper-tui)

```vimscript
:Minesweeper
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
