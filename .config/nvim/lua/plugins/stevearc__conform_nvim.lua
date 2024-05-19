return {
  "stevearc/conform.nvim",
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      c = { "clang-format" },
      css = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
    },
  },
}
