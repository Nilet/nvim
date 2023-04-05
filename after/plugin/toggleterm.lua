function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    vim.keymap.set('t', '<M-1>', [[<Cmd>ToggleTerm<CR>]], opts)
    vim.keymap.set('t', '<M-2>', [[<Cmd>ToggleTerm<CR>]], opts)
    vim.keymap.set('t', '<M-3>', [[<Cmd>ToggleTerm<CR>]], opts)
    vim.keymap.set('t', '<C-Right>', [[<Cmd>wincmd 5<<CR>]], opts)
    vim.keymap.set('t', '<C-Up>', [[<Cmd>wincmd 5-<CR>]], opts)
    vim.keymap.set('t', '<C-Down>', [[<Cmd>wincmd 5+<CR>]], opts)
    vim.keymap.set('t', '<C-Left>', [[<Cmd>wincmd 5><CR>]], opts)

end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
