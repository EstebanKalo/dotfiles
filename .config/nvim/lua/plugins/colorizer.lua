-- Cargar el plugin
require('colorizer').setup()

-- Configuración adicional (opcional)
vim.cmd('augroup Colorizer')
vim.cmd('  autocmd!')
vim.cmd('  autocmd BufReadPost * lua require("colorizer").attach_to_buffer()')
vim.cmd('augroup END')
