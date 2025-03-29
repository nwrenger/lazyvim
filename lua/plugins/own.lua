return {
  -- ssh remote stuff
  {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
    opts = {
      remote = {
        copy_dirs = {
          config = {
            base = vim.fn.stdpath("config"),
            dirs = { "lua", "init.lua", "lazyvim.json", "lazy-lock.json", "stylua.toml" },
          },
        },
      },
    },
  },
}
