local status, mason = pcall(require, "mason")
if (not status) then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

-- Install LSP servers automatically
-- You can install them manually with :Mason
-- Servers configured in lspconfig.rc.lua:
-- - pylsp (python-lsp-server)
-- - lua_ls (lua-language-server)
