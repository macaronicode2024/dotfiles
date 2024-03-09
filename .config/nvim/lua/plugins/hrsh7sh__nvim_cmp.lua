return {
  "hrsh7th/nvim-cmp",
  
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      build = (function ()
        if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
          return
        end
        return "make install_jsregexp"
      end)
    },
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path"
  },

  event = "InsertEnter",

  config = function ()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    luasnip.config.setup({})

    cmp.setup({
      snippet = {
        expand = function (args)
          luasnip.lsp_expand(args.body)
        end
      },
      completion = { completeopt = "menu,menuone,noinsert" },

      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" }
      }
    })
  end
}
