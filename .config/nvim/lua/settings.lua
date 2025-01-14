HOME = os.getenv("HOME")

vim.opt.showmatch = true
vim.opt.ignorecase = true


vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

vim.opt.number = true

vim.opt.mouse = a

vim.opt.clipboard = "unnamedplus"

vim.opt.ttyfast = true

vim.opt.background = "dark"

-- vim.cmd('colorscheme gruvbox')
require('onedark').setup {
    style = 'darker',
    transparent = true,
}
require('onedark').load()

vim.g.startify_custom_header = ""

--[==[
-- Open NERDTree on open
vim.api.nvim_exec([[
  autocmd VimEnter * NERDTree | wincmd p
]], false)
--]==]

vim.api.nvim_exec([[
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
]], false)


local neogit = require('neogit')
neogit.setup {}

vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
    ]]


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
