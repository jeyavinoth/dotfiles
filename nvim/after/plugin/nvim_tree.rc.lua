local status, nvim_tree = pcall(require, "nvim-tree")
if not status then return end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
    -- mappings = {
    --   list = {
    --     { key = "u", action = "dir_up" },
    --   },
    -- },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

-- require("nvim-tree").setup({
--   on_attach = function(bufnr)
--     local api = require("nvim-tree.api")
--
--     local function opts(desc)
--       return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--     end
--
--     -- Default mappings
--     api.config.mappings.default_on_attach(bufnr)
--
--     -- Custom mappings
--     vim.keymap.set("n", "r", api.tree.reload_and_descend, opts("Reload"))
--     vim.keymap.set("n", "H", api.node.toggle_hidden_filter, opts("Toggle Hidden"))
--   end,
-- })
