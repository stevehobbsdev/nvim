# My personal nvim config

A minimal, modern Neovim configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- Neovim >= 0.9
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- `make` (for the telescope-fzf-native build step)

## Installation

Clone into your Neovim config directory:

```sh
git clone https://github.com/stevehobbsdev/nvim ~/.config/nvim
```

On first launch, lazy.nvim will bootstrap itself and install all plugins automatically.

## Structure

```
~/.config/nvim/
├── init.lua                  # Entry point: options, lazy.nvim bootstrap, keymaps
├── lazy-lock.json            # Plugin version lockfile
└── lua/
    ├── config/
    │   └── options.lua       # Editor options
    └── plugins/              # One file per plugin
        ├── catppuccin.lua
        ├── dashboard-nvim.lua
        ├── flash.lua
        ├── lualine.lua
        ├── noice.lua
        ├── telescope.lua
        ├── toggleterm.lua
        ├── treesitter.lua
        └── which-key.lua
```

## Editor Options

| Option           | Value  |
|------------------|--------|
| Line numbers     | on     |
| Relative numbers | on     |
| Cursor line      | on     |
| Tab width        | 2      |
| Expand tabs      | spaces |

## Keymaps

`<leader>` is bound to `Space`.

| Key                | Mode        | Action                   |
|--------------------|-------------|--------------------------|
| `<leader><leader>` | Normal      | Find files (Telescope)   |
| `<leader>fg`       | Normal      | Live grep (Telescope)    |
| `<leader>fb`       | Normal      | Browse buffers           |
| `<leader>fr`       | Normal      | Browse registers         |
| `<leader>?`        | Normal      | Buffer-local keymaps     |
| `s`                | Normal/V/Op | Flash jump               |
| `S`                | Normal/V/Op | Flash Treesitter jump    |
| `<C-/>`            | Any         | Toggle terminal          |

## Plugins

### UI

#### [catppuccin/nvim](https://github.com/catppuccin/nvim)
Soothing pastel colorscheme. Configured with the **Mocha** flavour and integrations enabled for Treesitter and Telescope.

#### [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
Start screen shown on launch. Uses the `hyper` theme. Requires [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons).

#### [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
Fast and configurable statusline. Requires [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons).

#### [folke/noice.nvim](https://github.com/folke/noice.nvim)
Replaces the default UI for messages, cmdline, and popupmenu. Configured with:
- Bottom search bar
- Command palette (cmdline + popupmenu together)
- Long messages routed to a split
- Treesitter-powered markdown rendering in LSP hovers

Depends on [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) and [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify).

### Navigation

#### [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
Fuzzy finder over files, buffers, registers, and more. Layout is horizontal with the prompt at the top and results sorted ascending.

Depends on [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) and [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) for faster sorting.

#### [folke/flash.nvim](https://github.com/folke/flash.nvim)
Jump anywhere on screen with a minimal number of keystrokes. Two modes:
- `s` — character-based Flash jump
- `S` — Treesitter-aware structural jump

### Terminal

#### [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
Toggleable terminal window. Opens as a floating terminal with curved borders. Toggle with `<C-/>`.

### Syntax & Language

#### [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Incremental parsing for accurate syntax highlighting and code-aware navigation. Parsers installed by default: **Rust**, **Ruby**, **Lua**.

### Keybinding Discovery

#### [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
Displays a popup with available keybindings as you type. Uses the **Helix** preset. Press `<leader>?` to show buffer-local keymaps.

## Plugin Management

Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) with automatic update checking enabled. Run `:Lazy` to open the plugin manager UI.

The `lazy-lock.json` lockfile pins exact plugin versions for reproducible installs.
