return {
  "vhyrro/luarocks.nvim",
  priority = 1000, -- We'd like this plugin to load first out of the rest
  config = true, -- This automatically runs `require("luarocks-nvim").setup()`
}, {
  "nvim-neorg/neorg",
  dependencies = { "luarocks.nvim" },

  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.latex.renderer"] = {},
        ["core.ui"] = {},
        ["core.ui.calendar"] = {},
      },
    }
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
