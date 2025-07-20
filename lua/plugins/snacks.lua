return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },

    -- notifier
    notifier = {
      enabled = false,
      timeout = 5000,
      padding = true,
      style = "fancy",
      -- Notification history style
      history = {
        -- filter = "info", -- only show notifications of 'info' level and higher
        sort = { "added" }, -- sort by time added
        reverse = true, -- newest notifications at the top
      },
      styles = {
        notification_history = {
          border = "rounded",
          zindex = 100,
          width = 0.6,
          height = 0.6,
          minimal = false,
          title = " Notification History ",
          title_pos = "center",
          ft = "markdown",
          bo = { filetype = "snacks_notif_history", modifiable = false },
          wo = { winhighlight = "Normal:SnacksNotifierHistory" },
          keys = { q = "close" },
        },
      },
    },

    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },

    -- dashboard
    dashboard = {
      preset = {
        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣯⣶⣶⣶⣶⣶⣦⣤⣄⣀⣀⣠⡤⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⡢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠾⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠿⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠈⣿⣿⡿⣿⡏⢿⣻⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⡴⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣶⣶⢿⣿⠇⢿⡞⢿⣯⢿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠸⣷⣊⣦⢆⠀⠀⠀⠀⠀⠀⠀⠀⠠⠟⢸⣿⣿⣿⣿⣿⣿⣿⣿⢉⢙⣛⡼⡟⠀⠸⢣⡘⢭⣴⢿⣿⣿⣏⠙⠷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠙⣧⣻⣾⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠉⠙⠋⠀⠃⠀⠀⠠⠃⠀⠀⢸⣿⣿⣿⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⣾⠋⣿⣿⠏⣯⣻⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⣸⣿⠘⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠠⠁⠀⡟⣿⣖⢕⣸⡻⣄⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⢀⣿⣿⠀⠀⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠘⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⢸⠁⣿⢿⣷⣶⣴⣿⠢⣀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡋⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠘⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⢀⠏⣸⢻⣿⣿⣿⡇⠙⣽⢲⣤⣤⣀⣀⣴⣿⡃⠇⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣆⠀⠀⠀⠀⣴⠞⠙⠛⠻⢽⣿⣿⡗⣷⡀⠘⠻⠚⠋⢹⣿⣿⢿⣌⠁⠂⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣆⠀⠀⢜⠂⠀⠀⠀⠀⠀⠈⠛⠥⡈⠁⠀⠀⠀⠀⢸⣻⣿⠈⠂⠱⡀⠀⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⡿⡊⣸⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠻⣷⣏⠀⠀⠔⠀⠀⠘⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣾⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠄⡀⠂⠀⠘⡀⠊⠀⠀⠀⠀⠏⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⡟⣠⣤⣤⣤⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠭⠅⠀⠀⠀⠀⢀⣀⣠⣤⣘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣨⡙⠋⢻⡿⣿⡿⠛⠻⢿⣿⣿⣿⣿⣭⡏⠉⠫⢀⠒⡒⠀⠀⠀⠀⠀⠀⠒⣂⠬⡩⠐⢈⠊⠋⠻⢛⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠁⠀⣨⣼⠋⠀⠀⠀⠀⠘⠿⣿⣿⣿⣿⣂⠀⠀⠑⠠⡑⠄⡀⠀⠀⠀⠉⠀⠁⠀⠀⠀⠀⠀⠀⢀⠅⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠌⠿⠁⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣧⡀⠀⠀⠈⠄⠈⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠀⠀⠸⠠⡁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡬⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⢿⣿⣿⣿⣦⡀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⠀⠀⠀⡆⢣⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢸⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢸⠀⠀⠉⠢⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠻⣿⣿⣿⣷⣄⠀⠀⠀⠀⢀⠔⠀⠀⠀⠀⠢⢄⠀⠀⠀⡄⠈⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠈⠻⣿⣿⣿⣦⡀⢀⠔⠁⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠂⠀⣧⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠈⠻⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠈⠁⠃⡉⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⡀⠈⢿⣿⣿⣷⡄⠀⠀⠀⠀⠀⢀⠴⠁⡔⠀⡇⠀⠈⣣⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⢰⠀⠀⠀⡠⠊⠀⠀⠀⠙⢿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠋⠀⠀⢀⠀⠀⠇⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠸⠀⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⡆⠀⡀⠊⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⢠⢁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡇⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⢀⠃⠀⠀⠀⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣷⡀⠀⠀⠀⠀⠀⠘⠀⠀⠈⠈⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡇⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⡘⠇⠀⢀⠄⡊⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠇⢃⠀⠀⠀⠀
⠀⠀⠀⠀⢀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠇⠁⠔⠹⠀⢁⠀⠀⠀⠀⠀⠀⠠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⢰⠈⡄⠀⠀⠀
⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⢃⠀⠀⠀⠀⢸⠀⠄⢀⠃⢀⠂⠀⠀⠀⠀⠀⡠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣶⡀⠐⠀⠀⠀⠈⠀⢡⠀⠀⠀
⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠈⡄⠀⡠⠈⢸⠀⠀⠌⡀⠀⠀⠀⠀⠀⠀⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣤⠀⠀⠀⠀⠇⠈⡄⠀⠀
⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⡘⡊⠀⠀⠸⠀⡏⠀⠇⠀⠀⠀⠀⢀⠌⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣻⠀⠀⢀⡀⠀⠀⡃⠀⠀
⠀⠀⠀⠀⡇⠀⠀⠀⠀⠠⠈⠀⠈⢄⠀⠀⠴⠃⡌⠀⠀⠀⠀⢀⠂⢀⠌⠀⠀⠀⠀⡠⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣏⡇⡠⠊⠀⠀⠀⠀⠘⢄⠀
⠀⠀⠀⠀⡇⠀⢀⠐⢀⢀⠀⠀⠀⠀⠢⠀⠢⡞⠀⠀⠀⠀⠠⢁⠔⠁⠀⠄⢀⠔⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣀⣀⠀⡀⡘⡎⠀⠠⠐⠒⠒⠠⢄⢸⠀
⠀⠀⠀⢨⢁⠔⠀⠨⡀⠀⠈⠠⡀⢀⠄⠊⡄⠘⣄⠀⠀⠀⢐⠠⠤⠎⠀⠐⠒⠂⠀⠀⠉⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⢂⠡⠀⠀⠀⠀⠀⠀⢀⢡⠀
⠀⠀⠀⢣⡁⠀⠀⠀⠀⠉⠀⠀⢈⠠⠐⡸⠀⠀⠈⠢⡀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⢣⠉⠑⠯⡐⢄⠀⢃⠀
⠀⠀⠀⠀⠡⡠⠀⠀⠀⠀⠉⠈⠀⠀⠀⠀⠀⢀⡀⠀⠈⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣄⠆⠀⠀⠐⠄⠁⠈⡄
⠀⠀⠀⠀⠀⢡⠆⠀⠀⠀⠀⠀⢀⠠⠐⠂⠁⠀⠐⠒⠒⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠀⠀⠀⠀⠀⠀⠀⡇
⠀⠀⠀⠀⠀⢎⠀⠀⠀⠀⡠⠂⠁⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⡸⠁
⠀⠀⠀⠀⠀⠈⢊⢂⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⡄⠀⠀⠀⣰⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠱⢄⣀⠀⠀⠀⠀⠀⠀⠀⢀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠂⠀⠀⠀⠀⠀⠀⡠⠃⢀⣠⠞⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣚⠅⣂⠄⠀⠀⠀⠮⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠄⡲⢊⠠⠄⠐⠂⠈⠁⠀⠀⢰⠡⠐⠊⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣴⣼⢉⡶⠴⢤⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠐⠀⠉⠀⠀⠊⠁⠀⠀⠀⠀⠀⠀⠀⠈⠠⠋⠃⠀⠀⠀⠀⠀⠀⠀
   ]],
      },

      -- SECTONS (ADVANCED OPTIONS)
      sections = {
        { section = "header" },
        {
          pane = 2,
          section = "terminal",
          cmd = "colorscript crunchbang-mini",
          height = 6, -- By default 5
          padding = 4, -- By default 1
          align = "center",
        },
        { section = "keys", pane = 2, gap = 1, padding = 1 }, -- Removes those options from the dashboard
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        -- {
        --   pane = 2,
        --   icon = " ",
        --   title = "Git Status",
        --   section = "terminal",
        --   enabled = function()
        --     return Snacks.git.get_root() ~= nil
        --   end,
        --   cmd = "git status --short --branch --renames",
        --   height = 5,
        --   padding = 1,
        --   ttl = 5 * 60,
        --   indent = 3,
        -- },
        -- {
        --   pane = 3,
        --   section = "terminal",
        --   cmd = "pokemon-colorscripts -r --no-title; sleep .1",
        --   indent = 9,
        --   height = 10,
        -- },

        -- Shows startup time
        { section = "startup", pane = 2 },
      },
    },
  },

  -- KEYMAPS
  keys = {
    {
      "<leader>N",
      desc = "Neovim News",
      function()
        Snacks.win({
          file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
          width = 0.6,
          height = 0.6,
          title = " NEOVIM NEWS",
          title_pos = "center",
          border = "rounded",
          wo = {
            spell = false,
            wrap = false,
            signcolumn = "yes",
            statuscolumn = " ",
            conceallevel = 3,
          },
          keys = { q = "close" },
        })
      end,
    },
  },
}
