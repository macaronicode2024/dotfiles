return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function ()
    ensure_installed = { 
      "bash", 
      "c", "lua", "markdown", "markdown_inline", "typescript", "vim", "vimdoc" }
    auto_install = true
    highlight = { enable = true }
    indent = { enable = true }
  end
}

