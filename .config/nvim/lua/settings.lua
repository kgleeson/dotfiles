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
    style = 'darker'
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

