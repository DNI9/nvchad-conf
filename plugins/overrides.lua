local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "javascript",
    "jsdoc",
    "json",
    "c",
    "bash",
    "comment",
    "diff",
    "prisma",
    "tsx",
    "yaml",
  },

  -- for plugin: "JoosepAlviste/nvim-ts-context-commentstring"
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },

  -- for plugin: "windwp/nvim-ts-autotag"
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "emmet-ls",
    "json-lsp",
    "emmet-ls",
    "typescript-language-server",
    "prisma-language-server",
    "tailwindcss-language-server",
    "prettierd",
    "eslint_d",

    -- shell
    "shfmt",
    "shellcheck",

    -- Misc
    -- "codespell"
  },
}

-- git support in nvimtree
M.nvimtree = {
  -- needed for project plugin
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
    group_empty = true,
    -- highlight_opened_files = 'all'
  },

  view = {
    -- side = "right",
  },
}

M.alpha = {
  header = {
    val = {
      "  ██████╗   ███╗   ██╗  ██╗   █████╗   ",
      "  ██╔══██╗  ████╗  ██║  ██║  ██╔══██╗  ",
      "  ██║  ██║  ██╔██╗ ██║  ██║  ╚██████║  ",
      "  ██║  ██║  ██║╚██╗██║  ██║   ╚═══██║  ",
      "  ██████╔╝  ██║ ╚████║  ██║   █████╔╝  ",
      "  ╚═════╝   ╚═╝  ╚═══╝  ╚═╝   ╚════╝   ",
    },
  },
}

M.comment = {
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
}

M.whichKey = {
  window = {
    border = "single", -- none, single, double, shadow
  },
}

return M
