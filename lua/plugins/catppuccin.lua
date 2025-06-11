return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "mocha", -- Choose the flavor
    term_colors = true, -- Enable terminal colors
  },
  config = function()
    require("catppuccin").setup {
      flavour = "mocha",
      term_colors = true, -- Ensure terminal colors are enabled
    }
    vim.cmd "colorscheme catppuccin" -- Apply the colorscheme
  end,
}
