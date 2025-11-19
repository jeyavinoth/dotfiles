-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set treesitter parser directory BEFORE loading plugins
-- This must be set before nvim-treesitter loads
local parser_install_path = vim.fn.stdpath("data") .. "/treesitter"
vim.opt.rtp:prepend(parser_install_path)

-- set leader key before lazy.nvim setup
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- load base settings
require "base"

-- load plugins and plugin settings
require("lazy").setup("plugins", {
  rocks = {
    enabled = false,  -- disable luarocks since we don't need it
  },
})

require "features"

-- load keymaps
require "maps"

-- load highlights
require "highlights"

-- platform specific settings
if vim.fn.has "mac" == 1 then
  require "macos"
else
  -- require "windows"
end
