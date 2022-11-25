local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd,
  -- b.code_actions.eslint_d,
  b.diagnostics.eslint_d.with {
    -- ignore prettier warnings from eslint-plugin-prettier
    filter = function(diagnostic)
      return diagnostic.code ~= "prettier/prettier"
    end,

    condition = function(utils)
      return utils.root_has_file { ".eslintrc.js", ".eslintrc.yml", ".eslintrc.yaml", ".eslintrc.json", ".eslintrc" }
    end,
    -- show diagnostics on saving the file
    -- method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  },

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  -- b.formatting.clang_format,
  -- b.formatting.rustfmt,

  -- OTHER
  b.formatting.trim_whitespace,
  b.formatting.trim_newlines,
}

null_ls.setup {
  debug = true,
  sources = sources,

  -- format on save
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            bufnr = bufnr,
            filter = function(client)
              return client.name == "null-ls"
            end,
          })
        end,
      })
    end
  end,
}
