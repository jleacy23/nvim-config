require'nvim-treesitter.configs'.setup{
  ensure_installed = {'c', 'python', 'ruby', 'perl', 'lua', 'vim', 'json', 'yaml', 'verilog', 'bash', 'tmux'},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
