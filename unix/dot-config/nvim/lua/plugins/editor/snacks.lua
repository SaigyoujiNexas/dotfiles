return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      animate = { enabled = true, duration = 300, easing = "linear", fps = 60 },
      bigfile = { enabled = true, notify = true, size = 3 * 1024 * 1024 },
      dashboard = { enabled = true },
      explorer = { enabled = false },
      indent = { enabled = false },
      input = { enabled = true },
      picker = { enabled = false },
      quickfile = { enabled = true },
      scope = { enabled = false },
      scroll = {
        enabled = true,
        animate = {
          duration = { step = 15, total = 250 },
          easing = "linear",
        },
      },
      words = { enabled = false },
      win = {
        border = "rounded",
        position = "float",
      },
      terminal = {
        win = {
          style = "terminal",
          position = "float",
          border = "rounded",
        },
      },
      zen = {
        enabled = true,
      },
      toggle = {
        enabled = true,
        toggle = vim.keymap.set,
        which_key = true,
        notify = true,
        color = {
          enabled = "green",
          disabled = "yellow",
        },
        wk_desc = {
          enabled = "Disable ",
          disabled = "Enable ",
        },
      },
    },
    keys = {
      {
        "<C-/>",
        function()
          require("snacks").terminal.toggle()
        end,
        mode = { "i", "n", "t" },
        desc = "Toggle Terminal",
      },
      {
        "<C-_>",
        function()
          require("snacks").terminal.toggle()
        end,
        mode = { "i", "n", "t" },
        desc = "Toggle Terminal",
      },
    },
  },
}
