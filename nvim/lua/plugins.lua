return {
  -- Colorschemes
  'tjdevries/colorbuddy.nvim',

  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin'
  },
  'EdenEast/nightfox.nvim',
  'ellisonleao/gruvbox.nvim',
  'tomasr/molokai',
  'jnurmine/Zenburn',
  'gosukiwi/vim-atom-dark',
  'shaunsingh/nord.nvim',
  'Mofiqul/dracula.nvim',
  'Shatur/neovim-ayu',
  'rose-pine/neovim',
  'cocopon/iceberg.vim',
  'folke/tokyonight.nvim',
  'scottmckendry/cyberdream.nvim',
  'rebelot/kanagawa.nvim',
  'navarasu/onedark.nvim',

  'hoob3rt/lualine.nvim', -- statusline

  'kyazdani42/nvim-web-devicons', -- file icons

  -- LSP setup using built-in vim.lsp.config (nvim-lspconfig is deprecated in nvim 0.11+)
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  'onsails/lspkind-nvim', -- vscode-like pictograms
  'hrsh7th/cmp-buffer',   -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim
  'hrsh7th/nvim-cmp',     -- Completion
  'L3MON4D3/LuaSnip',     -- Snippet

  {
    'nvim-treesitter/nvim-treesitter', -- Treesitter
    -- build is only run when plugin is installed/updated via lazy, not on every startup
    build = ':TSUpdate'
  },
  'nvim-treesitter/nvim-treesitter-context', -- the sticky header thing at the top

  {
    'glepnir/lspsaga.nvim',
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  'ray-x/lsp_signature.nvim', -- LSP signature

  -- use ({
  --     'glepnir/lspsaga.nvim',
  --     branch = "main",
  --     dependencies = { "nvim-tree/nvim-web-devicons" }
  -- })

  -- use({
  --     'ray-x/navigator.lua',
  --     dependencies = {
  --         { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
  --     },
  -- })
  -- 'ray-x/lsp_signature.nvim' -- LSP signature

  -- Fast editing
  'tpope/vim-surround',  -- surround words, etc ysw)
  'tpope/vim-repeat',    -- updated . repeat
  'tomtom/tcomment_vim', -- gcc comment

  -- Git
  -- 'airblade/vim-gitgutter' -- shows the +/- for git changes
  'tpope/vim-fugitive',      -- git integration
  'dinhhuy258/git.nvim',     -- git integration built on top of vim-fugitive
  'lewis6991/gitsigns.nvim', -- git integration built on top of vim-fugitive

  -- File navigation
  'nvim-lua/plenary.nvim', -- common utilities
  {
    'nvim-telescope/telescope.nvim', -- Telescope (fuzzy file finder)
    branch = '0.1.x',
  },
  'nvim-telescope/telescope-file-browser.nvim',
  'ThePrimeagen/harpoon', -- harpoon to fast switching files

  -- Auto pairs
  'windwp/nvim-autopairs', -- autopairs
  -- 'windwp/nvim-ts-autotag' -- typescript ?

  'norcalli/nvim-colorizer.lua', -- colorizer to show hex colors

  'preservim/tagbar', -- tagbar on right to get tags in file

  -- {
  --   'puremourning/vimspector', -- vim debugger
  --   -- cmd = { "VimspectorInstall", "VimspectorUpdate" },
  --   -- fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Contninue" },
  --   -- config = function() require("config.vimspector").setup() end,
  -- },

  'ThePrimeagen/vim-be-good', -- a game to improve in vim

  -- trying out plugins
  'jpalardy/vim-slime', -- send text to tmux pane (make sure I am using this plugin regularly)

  'mbbill/undotree', -- undotree (figure the full use of the plugin)

  -- 'xuhdev/vim-latex-live-preview' -- LLPStartPreview, opens up the preview for .tex file

  -- Markdown preview setup: install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- ZenMode
  "folke/zen-mode.nvim",

  -- Floating Terminal
  'voldikss/vim-floaterm',

  -- Trying out something like NerdTree for neovim
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  },

  -- Syntax for just files
  'NoahTheDuke/vim-just',

  -- Telescope lsp-handlers (shows gr, etc in telescope)
  'Slotos/telescope-lsp-handlers.nvim',

  -- SQL, PSQL connection
  { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' } },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      'tpope/vim-dadbod',
    },
  },

  -- Vim maximizer
  {
    "0x00-ketsu/maximizer.nvim",
    config = function()
      require("maximizer").setup {}
    end
  },

  -- Oil (file explorer)
  'stevearc/oil.nvim',

  -- auto complete filenames into vim
  'kiyoon/telescope-insert-path.nvim',

  -- sticky header of function name
  "romgrk/nvim-treesitter-context",
}
