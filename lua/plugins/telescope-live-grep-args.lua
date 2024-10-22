return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require "telescope"

    telescope.setup {
      extensions = {
        live_grep_args = {
          mappings = { -- extend mappings
            i = {
              ["<leader>fw"] = telescope.extensions.live_grep_args.live_grep_args(),
            },
          },
        },
      },
    }

    telescope.load_extension "live_grep_args"
  end,
}
