local function map(mode, shortcut, command, opts)
  local options = { noremap = true, silent = true }

  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

local function nmap(shortcut, command, opts)
  map('n', shortcut, command, opts)
end

local function imap(shortcut, command, opts)
  map('i', shortcut, command, opts)
end

local function vmap(shortcut, command, opts)
  map('v', shortcut, command, opts)
end

nmap('<C-_>', '<esc>:Commentary<cr>')
imap('<C-_>', '<esc>:Commentary<cr>')
vmap('<C-_>', ':Commentary<cr>')

-- NvimTree
nmap('<C-b>', ':NvimTreeToggle<cr>')
nmap('<C-f>', ':NvimTreeFindFile<cr>')

-- Shift indents
nmap('<Tab>', '>>')
nmap('<S-Tab>', '<<')
vmap('<Tab>', '>>')
vmap('<S-Tab>', '<<')

-- Keep clipboard after paste
nmap('p', 'pgvy')
vmap('p', 'pgvy')

-- Enable Ctrl+V
imap('<C-v>', '<esc>"+P<Insert>')

-- Terminal 
map('n', '<C-t>', ':terminal<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit
