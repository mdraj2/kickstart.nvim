vim.lsp.enable('clangd')

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'c',
  callback = function()
    vim.keymap.set('n', '<leader>rr', function()
      local file = vim.fn.expand('%')
      local out = '/tmp/out'
      vim.cmd('split | terminal gcc ' .. file .. ' -o ' .. out .. ' && ' .. out)
    end, { buffer = true, desc = 'Run C file' })
  end,
})
