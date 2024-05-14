return {
  "folke/persistence.nvim",
  event = "BufReadPre", 
  opts = {
    { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
  },
  keys = {
      { "<leader>rs", function() require("persistence").load() end, desc = "[R]estore [s]ession from the current directory" },
      { "<leader>rl", function() require("persistence").load({ last = true }) end, desc = "[R]estore [l]ast saved session" },
      { "<leader>ds", function() require("persistence").stop() end, desc = "[D]on't [s]ave current session" },
    },
}
