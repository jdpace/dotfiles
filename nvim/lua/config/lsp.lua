require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = {
    -- auto install all LSP servers configured below except these:
    -- Mason doesn't play well with RBenv managed bins
    exclude = { "ruby_lsp", "rubocop" }
  }
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({})
lspconfig.ruby_lsp.setup({
  cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") }
})
lspconfig.rubocop.setup({
  cmd = { vim.fn.expand("~/.rbenv/shims/rubocop"), "--lsp" }
})
lspconfig.ts_ls.setup({})
lspconfig.eslint.setup({
  on_attach = function(_, bufnr)
  vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = bufnr,
    command = "EslintFixAll",
  })
end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
  end,
})
