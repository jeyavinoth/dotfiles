local keymap = vim.keymap
-- Remapping leaders, and window leader
vim.g.mapleader = " " -- remap leader to space

-- -- Increment/Decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- Window binds (Don't need some of the keymaps when using DVORAK)
-- keymap.set('n', '<leader>w', '<C-w>') -- Remap window operations to <leader>w

-- keymap.set('n', 'sh', '<C-w>h') -- Window movements
-- keymap.set('n', 'sj', '<C-w>j') -- Window movements
-- keymap.set('n', 'sk', '<C-w>k') -- Window movements
-- keymap.set('n', 'sl', '<C-w>l') -- Window movements
-- keymap.set('n', 'ss', '<C-w>s<C-w>w') -- Horizontal split
-- keymap.set('n', 'sv', '<C-w>v<C-w>w') -- Vertical split
-- keymap.set('n', 'sc', '<C-w>c') -- Window close
-- keymap.set('n', 'sw', '<C-w>w') -- Next window
-- keymap.set('n', 'sq', '<C-w>q') -- Quit window
-- keymap.set('n', 'so', '<C-w>o') -- Close everything else other than the current window
-- keymap.set('n', 'sd', ':bd<cr>') -- buffer delete
keymap.set('n', '<C-w>z', ':ZenMode<cr>', { silent = true }) -- ZenMode
keymap.set('n', '<C-w>s', '<C-w>s<C-w>w') -- Horizontal split
keymap.set('n', '<C-w>v', '<C-w>v<C-w>w') -- Vertical split

-- Tabs
-- keymap.set('n', 'se', ':tabedit %<Return>', { silent = true }) -- tabedit current buffer
-- keymap.set('n', 'st', ':tabnew<Return>', { silent = true }) -- tab new
keymap.set('n', '<C-w>e', ':tabedit %<Return>', { silent = true }) -- tabedit current buffer
keymap.set('n', '<C-w>t', ':tabnew<Return>', { silent = true }) -- tab new

-- -- Buffer binds
-- keymap.set('n', '<C-p>', ':bprev<cr>', { silent = true }) -- tabedit current buffer
-- keymap.set('n', '<C-n>', ':bnext<cr>', { silent = true }) -- tab new

-- Resizing windows
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><down>', '<C-w>+')
keymap.set('n', '<C-w><up>', '<C-w>-')

-- Clipboard yanks & paste
keymap.set('', '<leader>y', '"+y')
keymap.set('', '<leader>p', '"+p')
keymap.set('', '<leader>Y', '"+Y')
keymap.set('', '<leader>P', '"+P')

keymap.set('', '<leader>r', '"_') -- empty register

-- Git mergetools
keymap.set('n', '<leader>dt', ':diffthis<Return>')
keymap.set('n', '<leader>do', ':diffoff<Return>')
keymap.set('n', '<leader>dr', ':diffget REMOTE<Return>')
keymap.set('n', '<leader>db', ':diffget BASE<Return>')
keymap.set('n', '<leader>dl', ':diffget LOCAL<Return>')
keymap.set('n', '<leader>dg', ':diffget<Return>')

-- Remove trailing whitespace
keymap.set('n', '<leader>e', ':%s/\\s\\+$//e<CR>')

-- UndoTree
keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')

-- -- Moving lines
-- keymap.set('n', '-', ':move-2<cr>', { silent = true })
-- keymap.set('n', '=', ':move+<cr>', { silent = true })

-- Vimspector mappings
local opts = { noremap = true }
vim.cmd([[let g:vimspector_enable_mappings = "HUMAN"]])
keymap.set("n", "<leader>vd", ":call vimspector#Launch()<CR>", opts)
keymap.set("n", "<leader>ve", ":call vimspector#Reset()<CR>", opts)
keymap.set("n", "<leader>vc", ":call vimspector#Continue()<CR>", opts)

keymap.set("n", "<leader>vt", ":call vimspector#ToggleBreakpoint()<CR>", opts)
keymap.set("n", "<leader>vT", ":call vimspector#ClearBreakpoints()<CR>", opts)
keymap.set("n", "<leader>vb", ":VimspectorBreakpoints<CR>", opts)

keymap.set("n", "<leader>vl", ":VimspectorBreakpoints<CR>", opts)

keymap.set("n", "<leader>vr", "<Plug>VimspectorRestart", opts)
keymap.set("n", "<leader>vn", "<Plug>VimspectorStepOver", opts)
keymap.set("n", "<leader>vS", "<Plug>VimspectorStepOut", opts)
keymap.set("n", "<leader>vs", "<Plug>VimspectorStepInto", opts)

-- Vimslime binds 
-- keymap.set("n", "<C-c><C-s>", ":SlimeSend<CR>", opts)
keymap.set("n", "<C-c><C-j>", ":SlimeSend<CR>", opts)

-- Tagbar
keymap.set("n", "<leader>T", ":Tagbar<CR>", { noremap = true })

-- Float Terminal
keymap.set("n", "<leader>t", ":FloatermToggle<CR>", { noremap = true })
keymap.set("t", "<ESC>", "<C-\\><C-n>", { noremap = true })

-- Set no read only for vimdiff
keymap.set("n", "<leader>E", "<cmd>set noreadonly<CR>", { noremap = true })

-- -- Center the view on ctrl-d
-- keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
-- keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Nvim-tree 
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true })
