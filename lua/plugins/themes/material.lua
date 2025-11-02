return {
  "marko-cerovac/material.nvim",
  opts = {
    contrast = {
      terminal = true,
      sidebars = true,
      floating_windows = true,
      non_current_windows = true,
    },
    disable = {
      colored_cursor = true, -- Disable the colored cursor
      borders = false, -- Disable borders between vertically split windows
      background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
      eob_lines = false, -- Hide the end-of-buffer lines
    },
    plugins = {
      "blink",
      "flash",
    },
    style = {
      comments = { [[ italic = true ]] },
    },
    high_visibility = {
      darker = true,
    },
    lualine_style = "stealth",
  },
}
