return {
  "folke/snacks.nvim",
  opts = {
    mappings = {
      n = {
        ["<Leader>c"] = {
          function()
            local bufs = vim.fn.getbufinfo { buflisted = true }
            require("astrocore.buffer").close(0)
            if not bufs[2] then require("snacks").dashboard() end
          end,
          desc = "Close buffer",
        },
      },
    },
    dashboard = {
      preset = {
        header = table.concat({

          "      ──────▄▀▄─────▄▀▄                         ",
          "      ─────▄█░░▀▀▀▀▀░░█▄                        ",
          "      ─▄▄──█░░░░░░░░░░░█──▄▄                    ",
          "      █▄▄█─█░░▀░░┬░░▀░░█─█▄▄█                   ",
          "╔══════════════════════════════════════════════╗",
          "███╗░░██╗  ░█████╗░  ░█████╗░  ██████╗░  ███████╗ ",
          "████╗░██║  ██╔══██╗  ██╔══██╗  ██╔══██╗  ██╔════╝ ",
          "██╔██╗██║  ██║░░╚═╝  ██║░░██║  ██████╔╝  █████╗░░ ",
          "██║╚████║  ██║░░██╗  ██║░░██║  ██╔══██╗  ██╔══╝░░ ",
          "██║░╚███║  ╚█████╔╝  ╚█████╔╝  ██║░░██║  ███████╗ ",
          "╚═╝░░╚══╝  ░╚════╝░  ░╚════╝░  ╚═╝░░╚═╝  ╚══════╝ ",
          "╚═══════════════════════════════════════════════╝",
        }, "\n"),
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },

        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
