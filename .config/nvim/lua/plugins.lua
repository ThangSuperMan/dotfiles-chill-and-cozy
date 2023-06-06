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

return require('lazy').setup({
  -- Completion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/nvim-cmp", config = require "plugins.cmp" },
  { 'mfussenegger/nvim-jdtls' },

  -- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = require("plugins.treesitter"),
	},

  -- Colorizer
  { 'norcalli/nvim-colorizer.lua', config = require 'plugins.colorizer' },

  -- Surround
  { 'tpope/vim-surround' },
  { 'windwp/nvim-ts-autotag' },
  { 'alvan/vim-closetag', config = require 'plugins.closetag' },
  { 'jiangmiao/auto-pairs' },

  { 'terryma/vim-multiple-cursors' },

  -- Comment
  { 'tpope/vim-commentary' },

  -- Snippet
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip', config = require 'plugins.luasnip' },

  -- { 'echasnovski/mini.indentscope', config= function()
  --   require('mini.indentscope').setup({
  --     symbol = '▏',
  --   })
  -- end
  -- },

  {
    "lukas-reineke/indent-blankline.nvim", 
    config = function()
      require("plugins.indent-blankline")
    end,
  },

  -- { 'lukas-reineke/indent-blankline.nvim' , config = function ()
  --      require("indent_blankline").setup({
  --        show_current_context = false,
  --        show_current_context_start = true,
  --        space_char_blankline = " ",
  --        filetype_exclude = {"help", "txt", "norg", "md"},
  --        buftype_exclude = {"terminal", "nofile"}
  --     })
  --          -- vim.g.indent_blankline_char = "∘"
  --  end
  -- },

  { 'christoomey/vim-tmux-navigator' },
	{ "psliwka/vim-smoothie" },
	{ "sainnhe/everforest", config = require("plugins.theme") },
  -- { "catppuccin/nvim", config = require("plugins.theme") },
  -- { 'zefei/cake16', config =  require("plugins.theme")},
  -- { 'christianchiarulli/nvcode-color-schemes.vim', config = require("plugins.theme") }, 
  -- { 'NLKNguyen/papercolor-theme', config = require("plugins.theme") },
  -- { "shaunsingh/nord.nvim" },
  -- { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  -- { "sainnhe/edge", config = require("plugins.theme") },
  -- { "catppuccin/nvim", as = "catppuccin", config = require("plugins.theme") },
  -- { 'folke/tokyonight.nvim', config = require("plugins.theme") },

  { "xiyaowong/nvim-transparent", config = function()
    require("transparent").setup({
      extra_groups = {
        "NeoTreeFileIcon",
        "NeoTreeExpander"
      },
      exclude_grops = {}, -- table: groups you don't want to clear
    })
  end },

  {
    "evanleck/vim-svelte",
    config = function()
      vim.g.svelte_preprocessors = "typescript"
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = require("plugins.neotree"),
  },
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      vim.keymap.set("n", "fw", "<cmd>:HopChar2<cr>")
      vim.keymap.set("n", "fe", "<cmd>:HopPattern<cr>")
    end,
  },
  {
    'voldikss/vim-floaterm',
    -- keys = {
    -- 	{ "<C-\\>", "<cmd>FloatermToggle<cr>" },
    -- 	{ "<C-\\>", "<cmd>FloatermToggle<cr>", { mode = "tnoremap", desc = "Floaterm" } },
    -- },
    config = function()
      vim.g.floaterm_wintype = 'float'
      vim.g.floaterm_position = 'bottomright'
      vim.g.floaterm_width = 0.6
			vim.g.floaterm_height = 0.5
			vim.g.floaterm_keymap_toggle = "<C-\\>"
    end
  },

  -- Popup window for cmd
  { 'gelguy/wilder.nvim', config = require 'plugins.wilder' },
  { 'nvim-lua/popup.nvim' },

  -- Barbar, bufferline
  { 'romgrk/barbar.nvim', config = require 'plugins.barbar' },

  { 'kyazdani42/nvim-web-devicons' },
  { 'ryanoasis/vim-devicons' },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = require('plugins.lualine')
  },

  -- Prettier
  { 'mhartington/formatter.nvim', config = require 'plugins.prettier' },
  -- Lsp
  { 'neovim/nvim-lspconfig', config = require 'plugins.lsp' },
  { 'onsails/lspkind-nvim', config = require 'plugins.kind' },

  { 'MattesGroeger/vim-bookmarks', config = require('plugins.bookmark') },
  { 'tom-anders/telescope-vim-bookmarks.nvim' },

	-- install fzf
	-- { "junegunn/fzf" },
  { 'ibhagwan/fzf-lua'
    -- optional for icon support
    -- dependencies  = { 'nvim-tree/nvim-web-devicons' }
  },

	-- { "junegunn/fzf.vim", config = require("plugins.fzf") },
  {
		"vuki656/package-info.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		config = function()
			require("package-info").setup()
			vim.keymap.set({ "n" }, "<LEADER>ns", require("package-info").show, { silent = true, noremap = true })
			vim.keymap.set({ "n" }, "<LEADER>nc", require("package-info").hide, { silent = true, noremap = true })
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	--  { 'sunjon/shade.nvim', config = require('plugins.shade') }
	-- {
	-- 	"glepnir/lspsaga.nvim",
	-- 	branch = "main",
	-- 	config = require("plugins.saga"),
	-- },

  -- { 
  --   "kkharji/lspsaga.nvim",
  --   config = require('plugins.saga')
  -- },

  -- {
		-- "glepnir/lspsaga.nvim",
		-- branch = "main",
		-- config = require("plugins.saga"),
	-- },

  {
  event = "LspAttach",
  "glepnir/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      -- {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },

  -- {
  --     "xiyaowong/nvim-transparent",
  --     config = function()
  --       require("transparent").setup({
  --         enable = false, -- boolean: enable transparent
  --         extra_groups = {
  --           "NeoTreeFileIcon",
  --           "NeoTreeExpander",
  --         },
  --         exclude = {}, -- table: groups you don't want to clear
  --       })
  --     end,
  --   },

  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },

  -- {  'github/copilot.vim', config = require 'plugins.copilot'},
  -- { 'Exafunction/codeium.vim' }
  -- { 'lewis6991/impatient.nvim', config = function()
  --     require('impatient')
  --    end 
  -- }

  -- reduce the start up time
  -- use({ 'lewis6991/impatient.nvim', config = function()
  --   require('impatient')
  -- end })

})
