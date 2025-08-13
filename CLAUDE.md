# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Configuration Management Commands

**Plugin Installation/Updates:**
```bash
# Open Neovim and run these commands
:PackerSync    # Install and update all plugins
:PackerInstall # Install new plugins only
:PackerUpdate  # Update existing plugins
:PackerClean   # Remove unused plugins
```

**Configuration Reload:**
```bash
# After making changes to configuration files
:source %      # Reload current file
:luafile %     # Reload current Lua file
```

## Architecture Overview

This is a modular Neovim configuration organized under the `joe` namespace with clear separation of concerns:

**Core Structure:**
- `init.lua` - Entry point that loads all modules in order
- `lua/joe/plugins.lua` - Plugin management using Packer
- `lua/joe/core/` - Core Neovim settings and configurations
- `lua/joe/core/plugin_configs/` - Individual plugin configurations

**Plugin Management:**
- Uses **Packer** as the plugin manager
- Auto-installs Packer if not present
- Plugin configurations are separated into individual files for maintainability
- Bootstrap process handles initial setup automatically

**Configuration Loading Order:**
1. `keymaps.lua` - Key mappings and leader key setup
2. `options.lua` - Neovim options and settings  
3. `plugins.lua` - Plugin specifications and installation
4. `plugin_configs/init.lua` - Loads all plugin configurations

**Key Plugins and Their Configs:**
- `dracula.nvim` - Color scheme
- `nvim-tree.lua` - File explorer (Ctrl+N to toggle)
- `lualine.nvim` - Status line
- `treesitter` - Syntax highlighting with language support
- `telescope.nvim` - Fuzzy finder with custom keybindings under `<leader>f`
- `vim-tmux-navigator` - Tmux pane navigation
- `which-key.nvim` - Key binding hints
- `claude-code.nvim` - Claude Code integration

**Key Mappings Conventions:**
- Leader key: `<Space>`
- File operations: `<leader>f` prefix (telescope)
- Window management: `<leader>s` prefix  
- Tab management: `<leader>t` prefix
- Clipboard operations: `<leader>y/p` for system clipboard
- Quick escape: `jk` in insert mode

**Development Notes:**
- All configuration files are in Lua
- 2-space indentation throughout
- Plugin configs are modular - each plugin has its own file
- Relative line numbers enabled with absolute on current line
- System clipboard integration configured