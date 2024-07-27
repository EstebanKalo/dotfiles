-- Establecer el número de lineas
vim.api.nvim_command("set number")

-- Establecer el ancho de indentación a 4 espacios
vim.api.nvim_command("set shiftwidth=4")

-- Establecer el ancho de tabulación a 4 espacios
vim.api.nvim_command("set tabstop=4")

-- Convertir las tabulaciones en espacios (importante para github)
vim.api.nvim_command("set expandtab")

-- Habilita termguicolors
vim.o.termguicolors = true
