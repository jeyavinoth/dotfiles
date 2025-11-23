-- macOS-specific settings for Neovim

-- Clipboard integration with macOS
-- Use the system clipboard for all yank/paste operations
vim.opt.clipboard = "unnamedplus"

-- Set shell to use (some plugins work better with specific shell settings on macOS)
vim.opt.shell = "/bin/zsh"

-- macOS uses Option key as Meta by default in most terminals
-- This setting helps with key mapping consistency
-- termguicolors should be enabled for proper color display
vim.opt.termguicolors = true

-- Performance: macOS specific optimizations
vim.opt.updatetime = 300  -- Faster completion (default is 4000ms)

-- Ignore macOS-specific files in file searches
vim.opt.wildignore:append {
  "*.DS_Store",
  ".DS_Store",
  "._*",
}
