return {
  "marko-cerovac/material.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Set your preferences for the Material theme
    require("material").setup({
      contrast = {
        terminal = false, -- Enable contrast for terminal
        sidebars = true, -- Enable contrast for sidebar-like windows
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = true, -- Enable subtle cursor line highlighting
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = true, -- Enable contrasted background for non-current windows
        filetypes = { "python", "html", "htmldjango", "lua", "c", "cpp", "java", "javascript", "markdown" }, -- Specify which filetypes get the contrasted (darker) background
      },
      styles = {
        comments = { italic = true },
        keywords = { bold = true, italic = true },
        functions = { bold = true, undercurl = false },
        variables = { underline = false },
        strings = { bold = false },
      },

      plugins = {
        "blink",
        -- "coc",
        -- "colorful-winsep",
        -- "dap",
        -- "dashboard",
        -- "eyeliner",
        "fidget",
        "flash",
        "gitsigns",
        -- "harpoon",
        -- "hop",
        -- "illuminate",
        "indent-blankline",
        -- "lspsaga",
        "mini",
        "neo-tree",
        -- "neogit",
        -- "neorg",
        -- "neotest",
        -- "noice",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-notify",
        "nvim-tree",
        -- "nvim-web-devicons",
        -- "rainbow-delimiters",
        -- "sneak",
        "telescope",
        "trouble",
        "which-key",
      },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
      },

      lualine_style = "stealth",
    })

    -- Set the Material theme style (you can choose 'darker' or other styles too)
    vim.g.material_style = "deep-ocean"

    -- Apply Material theme as the colorscheme
    -- vim.cmd([[colorscheme material]])
  end,
}
