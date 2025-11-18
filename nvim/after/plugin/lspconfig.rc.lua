-- Using built-in vim.lsp.config (nvim 0.11+)
-- nvim-lspconfig is deprecated

-- -- this doesn't work, figure this out
-- local on_attach = function(client, bufnr)
--     -- formatting
--     if client.server_capabilities.documentFormattingProvider then
--         vim.api.nvim_command [[augroup Format]]
--         vim.api.nvim_command [[autocmd! * <buffer>]]
--         vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
--         vim.api.nvim_command [[augroup END]]
--     end
-- end

-- Python PYLSP Configuration
vim.lsp.config.pylsp = {
  cmd = { 'pylsp' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', '.git' },
  settings = {
    configurationSources = { "flake8" },
    formatCommand = { "black" },
    pylsp = {
      plugins = {
        jedi_completion = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
        jedi_symbols = { enabled = true, all_scopes = true },
        pycodestyle = { enabled = false },
        flake8 = {
          enabled = true,
          maxLineLength = 120
        },
        mypy = { enabled = true },
        yapf = { enabled = false },
        pylint = { enabled = false },
        mccabe = { enabled = false },
        preload = { enabled = false },
        rope_completion = { enabled = false },
        black = { enabled = true },
        isort = { enabled = false }
      },
    },
  }
}

-- -- Pyright Setup
-- vim.lsp.config.pyright = {
--   cmd = { 'pyright-langserver', '--stdio' },
--   filetypes = { 'python' },
--   root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', '.git' },
-- }

-- Lua Language Server Configuration
vim.lsp.config.lua_ls = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '.git' },
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the "vim" global
        globals = { 'vim', 'hs' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false -- get rid of the error message OpenRestify
      }
    }
  }
}

-- Enable the LSP servers
vim.lsp.enable({ 'pylsp', 'lua_ls' })
