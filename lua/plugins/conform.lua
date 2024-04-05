return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["_"] = { "trim_whitespace" },
      python = { "ruff_format", "ruff_fix" },
      -- Only run the first available formatter
      javascript = { { "prettierd", "prettier" } },
      lua = { "stylua" },
      typst = { "typstfmt" },
      sh = { "shfmt" },
      rust = { "rustfmt" },
    },

    -- Configure formatters
    formatters = {
      injected = { options = { ignore_errors = true } },

      -- Python
      ruff_format = {
        args = {
          -- Keep base args
          "format",

          -- Set default line length
          "--line-length",
          "79",

          -- Keep base args
          "--stdin-filename",
          "$FILENAME",
          "-",
        },
      },

      ruff_fix = {
        prepend_args = {
          -- Set default line length
          "--line-length",
          "79",

          -- Only fix import order
          "--select",
          "I",
        },
      },
    },
  },
}
