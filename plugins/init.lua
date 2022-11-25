local overrides = require "custom.plugins.overrides"

return {

  ["folke/which-key.nvim"] = {
    disable = false,
    override_options = overrides.whichKey,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = {
      extensions_list = { "projects", "themes", "terms" },
    },
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["JoosepAlviste/nvim-ts-context-commentstring"] = {},

  ["numToStr/Comment.nvim"] = {
    override_options = overrides.comment,
  },


  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  ["glepnir/lspsaga.nvim"] = {
    branch = "main",
    config = function()
      local present, saga = pcall(require, "lspsaga")

      if present then
        saga.init_lsp_saga {
          -- "single" | "double" | "rounded" | "bold" | "plus"
          border_style = "rounded",
        }
      end
    end,
  },

  ["ahmedkhalf/project.nvim"] = {
    config = function()
      local present, project = pcall(require, "project_nvim")
      if present then
        project.setup()
      end
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
