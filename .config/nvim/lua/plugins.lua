local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('ryanoasis/vim-devicons')
Plug('SirVer/ultisnips')
Plug('honza/vim-snippets')
Plug('scrooloose/nerdtree')
Plug('preservim/nerdcommenter')
Plug('mhinz/vim-startify')
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug('junegunn/fzf', { ['do'] = function()
    vim.fn['fzf#install']()
end })
Plug('NeogitOrg/neogit')
Plug('nvim-lua/plenary.nvim')
Plug('navarasu/onedark.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('folke/which-key.nvim')


vim.call('plug#end')
