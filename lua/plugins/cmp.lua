return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind-nvim",
  },
  opts = function(_, opts)
    local lspkind = require("lspkind")

    opts.formatting = {
      format = lspkind.cmp_format({
        mode = "symbol_text", -- Show both icon & text
        maxwidth = 50, -- Limit width
        ellipsis_char = "...", -- Truncate long entries
        show_labelDetails = true,
      }),
    }
  end,
}
