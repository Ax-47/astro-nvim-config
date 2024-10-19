return {
  "mgierada/lazydocker.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function() require("lazydocker").setup {} end,
  event = "BufRead",
  keys = {
    {
      "<leader>a",
      function() require("lazydocker").open() end,
      desc = "Open Lazydocker floating window",
    },
  },
}
