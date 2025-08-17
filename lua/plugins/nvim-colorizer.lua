return {
  "catgoose/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    filetypes = {
      "*", -- Enable for all filetypes
      css = { css = true },
      scss = { css = true },
      html = { css = true },
      javascript = { css = true },
      typescript = { css = true },
      tailwind = { css = true },
      htmldjango = { css = true },
    },
    user_default_options = {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = false, -- Enable named colors like Blue
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      AARRGGBB = false, -- 0xAARRGGBB
      css = true, -- Enable all CSS features: rgb(), hsl(), etc.
      mode = "background", -- Set the display mode: foreground, background, virtualtext
      tailwind = true, -- Tailwind colors
      tailwind_opts = { -- Options for highlighting tailwind names
        update_names = true,
      },
      sass = { enable = true, parsers = { "css" } }, -- Enable Sass colors
      virtualtext = "",
    },
  },
  config = function(_, opts)
    require("colorizer").setup(opts)
  end,
}
