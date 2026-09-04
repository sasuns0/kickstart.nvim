vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup {}

-- Oil toggle keymap
vim.keymap.set('n', '<leader>e', function()
  if vim.bo.filetype == 'oil' then
    vim.cmd 'bd' -- Close if in Oil
  else
    vim.cmd 'Oil' -- Open if not in Oil
  end
end, { desc = 'Oil' })
