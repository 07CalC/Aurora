return {
  {
    "07calc/cook.nvim",
    -- dev = true,
    -- dir = "~/Documents/cook.nvim/",
    config = function()
      require("cook").setup {
        runners = {
          sh = "bash %s",
        },
      }
    end,
  },
}
