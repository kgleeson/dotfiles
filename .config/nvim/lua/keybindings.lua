function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Escape from insert
imap('ii', '<ESC>')
imap('jk', '<ESC>')
imap('kj', '<ESC>')

-- FZF Ctrl+P
nmap('<C-p>', '<cmd>FZF<cr>')

-- NerdTree
nmap('<leader>n', '<cmd>NERDTreeFocus<cr>')
nmap('<C-n>', '<cmd>NERDTree<cr>')
nmap('<C-t>', '<cmd>NERDTreeToggle<cr>')
nmap('<C-f>', '<cmd>NERDTreeFind<cr>')

-- Window Select
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-h>', '<C-w>h')

-- Window Move
nmap('<A-h>', '<A-W>H')
nmap('<A-j>', '<A-W>J')
nmap('<A-k>', '<A-W>K')
nmap('<A-h>', '<A-W>H')
