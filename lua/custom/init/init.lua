vim.g.have_nerd_font = true
vim.o.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.listchars = {
  trail = '·',
  tab = '  ',
}

-- Oil
vim.keymap.set('n', '<leader>e', function()
  if vim.bo.filetype == 'oil' then
    vim.cmd 'bd' -- Close if in Oil
  else
    vim.cmd 'Oil' -- Open if not in Oil
  end
end, { desc = 'Oil' })

require 'custom.init.harpoon'

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Read error' })
