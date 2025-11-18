local status, nvim_tree = pcall(require, "nvim-tree")
if not status then return end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- Custom keymappings function (replaces view.mappings)
local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  -- Default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- Custom mappings
  local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }

  -- 'u' to go up a directory
  vim.keymap.set('n', 'u', api.tree.change_root_to_parent, opts)
end

-- setup with some options
require("nvim-tree").setup({
  on_attach = on_attach,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
