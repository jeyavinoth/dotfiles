-- Cursor / colors
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- Background settings
vim.opt.background = 'dark'

vim.cmd([[ au ColorScheme * hi Normal ctermbg=none guibg=none ]])

-- Colorschemes
vim.cmd([[ colorscheme duskfox ]])

-- -- Ayu-dark theme
-- vim.cmd([[
--     set termguicolors     " enable true colors support
--     let ayucolor="dark"   " for dark version of theme
--     colorscheme ayu
-- ]])
-- -- let ayucolor="light"  " for light version of theme
-- -- let ayucolor="mirage" " for mirage version of theme

-- -- Colorschemes
-- vim.cmd([[ colorscheme gruvbox ]])
