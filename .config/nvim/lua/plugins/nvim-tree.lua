vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Mapeos de teclas personalizados
    vim.keymap.set('n', '<Left>', api.node.navigate.parent_close, opts('Close Directory'))
    vim.keymap.set('n', '<Right>', api.node.open.edit, opts('Open'))
  end
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

