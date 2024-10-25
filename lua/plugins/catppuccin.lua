return {
  "catppuccin/nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      flavour = "mocha",
      background = { -- :h background
        light = "mocha",
        dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.25, -- percentage of the shade to apply to the inactive window
      },

      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "underline", "bold" },
        functions = { "italic", "bold" },
        keywords = { "bold", "italic" },
        strings = {},
        variables = { "italic" },
        numbers = {},
        booleans = { "italic", "underdotted" },
        properties = {},
        types = { "underdouble" },
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },

      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    }
  end,
}
