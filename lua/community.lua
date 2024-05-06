-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.media.codesnap-nvim" },
  { import = "astrocommunity.media.cord-nvim" },
  -- { import = "astrocommunity.media.presence-nvim" },
  -- { import = "astrocommunity.media.pets-nvim" },
  { import = "astrocommunity.note-taking.venn-nvim" },
  { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.programming-language-support.web-tools-nvim" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.fish" },
  -- { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.toml" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
}
