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

local status_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status_lspconfig) then return end

-- Install LSP servers automatically
-- Servers configured in lspconfig.rc.lua:
-- - pylsp (python-lsp-server)
-- - lua_ls (lua-language-server)
mason_lspconfig.setup({
  ensure_installed = { "pylsp", "lua_ls" },
  automatic_installation = true,
})
