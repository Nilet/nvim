require("blz.remap")
require("blz.set")
require("blz.packer")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

function toggle_nvim_tree()
  if vim.fn.isdirectory(vim.fn.expand('%')) == 1 then
    vim.cmd('NvimTreeToggle')
  end
end

vim.api.nvim_command('autocmd BufEnter * lua toggle_nvim_tree()')
