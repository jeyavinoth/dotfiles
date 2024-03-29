local status, nf = pcall(require, "nightfox")
if not status then return end

local specs = {
    nightfox = {syntax = {bracket = "orange"}},
    carbonfox = {syntax = {bracket = "red.bright"}},
    terafox = {syntax = {bracket = "orange"}},
    nordfox = {syntax = {bracket = "orange"}},
}

-- Default options
nf.setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = true,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = specs,
  groups = {},
})

-- setup must be called before loading
-- vim.cmd("colorscheme terafox")
-- vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme carbonfox")


