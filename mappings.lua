local M = {}

M.disabled = {
  n = {
    ["<leader>ca"] = "",
    ["gd"] = "",
    ["K"] = "",
  },
}

M.general = {
  n = {
    -- [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jj"] = { "<ESC>", "escape or quit insert mode" },
    ["jk"] = { "<ESC>", "escape or quit insert mode" },
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>p"] = { "<cmd>Telescope projects<CR>" },
  },
}

M.lspsaga = {
  n = {
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "code action", opts = { silent = true } },

    -- Lsp finder find the symbol definition implement reference
    -- if there is no implement it will hide
    -- when you use action in finder like open vsplit then you can
    -- use <C-t> to jump back
    ["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", opts = { silent = true } },
    ["gr"] = { "<cmd>Lspsaga rename<CR>", opts = { silent = true } },

    -- Peek Definition
    -- you can edit the definition file in this flaotwindow
    -- also support open/vsplit/etc operation check definition_action_keys
    -- support tagstack C-t jump back
    ["gd"] = { "<cmd>Lspsaga peek_definition<CR>", opts = { silent = true } },
    -- ["<leader>cd"] = { "<cmd>Lspsaga show_line_diagnostics<CR>", opts = { silent = true } },
    ["<leader>cd"] = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts = { silent = true } },
    ["K"] = { "<cmd>Lspsaga hover_doc<CR>", opts = { silent = true } },
  },
  v = {
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "code action", opts = { silent = true } },
  },
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<CR>", opts = { silent = true, noremap = true } },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", opts = { silent = true, noremap = true } },
  },
}
return M
