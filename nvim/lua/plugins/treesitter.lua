return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua", "vim", "vimdoc", "css", "html", "javascript", "ruby", "markdown", "markdown_inline"
    },

    highlight = { enable = true },
    indent = { enable = true },
  }
}
