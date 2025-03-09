return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Pyright for Django
      pyright = {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
              typeCheckingMode = "basic",
            },
            django = true,
          },
        },
      },
      -- HTML LSP for Django Templates
      html = {
        filetypes = { "html", "htmldjango", "jinja", "jinja2" },
      },
    },
  },
}
