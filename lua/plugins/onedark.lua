return {
  "navarasu/onedark.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    -- Main options --
    style = "darker", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true, -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = "<leader>od", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
  },

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = "italic",
    keywords = "italic",
    functions = "italic",
    strings = "none",
    variables = "italic",
    booleans = "underdotted",
    types = "bold",
    conditionals = "italic",
    loops = "underline",
  },

  -- Lualine options --
  lualine = {
    transparent = false, -- lualine center bar transparency
  },

  -- Custom Highlights --
  colors = {
    bright_orange = "#ff8800", -- define a new color
    green = "#0437F2", -- redefine an existing color
    rose_red = "#C21E56",
    mauve = "#E0B0FF",
  }, -- Override default colors

  highlights = {
    ["@keyword"] = { fg = "$rose_red" },
    ["@string"] = { fg = "mauve", bg = "#00ff00", fmt = "bold" },
    ["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
    ["@function.builtin"] = { fg = "#0059ff" },
  }, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}
