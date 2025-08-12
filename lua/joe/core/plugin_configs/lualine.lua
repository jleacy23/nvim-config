require('lualine').setup {
  options = {
    theme = 'dracula',           -- Dracula theme
    icons_enabled = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },      -- Current mode (NORMAL, INSERT, etc.)
    lualine_b = { 'branch', 'diff' }, -- Git branch + changes
    lualine_c = {
      { 'filename', path = 1 }   -- Filename with relative path
    },
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' } }, -- LSP diagnostics
      'encoding',                 -- File encoding (UTF-8)
      'fileformat',               -- File format (unix, dos, mac)
      'filetype'                  -- Language / file type
    },
    lualine_y = { 'progress' },   -- Progress in file (%)
    lualine_z = { 'location' }    -- Line and column number
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'nvim-tree', 'fugitive' }
}
