-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.indent.indent-tools-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.editing-support.text-case-nvim" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.cloak-nvim" },
  -- { import = "astrocommunity.indent.indent-rainbowline" },
  { import = "astrocommunity.recipes.picker-nvchad-theme" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.git.gitgraph-nvim" },
  { import = "astrocommunity.remote-development.nvim-sftp-sync" },
  { import = "astrocommunity.remote-development.remote-sshfs-nvim" },
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.git.nvim-tinygit" },
  -- { import = "astrocommunity.workflow.precognition-nvim" },
  -- { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.split-and-window.neominimap-nvim" },
  { import = "astrocommunity.game.leetcode-nvim" },
  { import = "astrocommunity.docker.lazydocker" },
  { import = "astrocommunity.syntax.vim-sandwich" },
  { import = "astrocommunity.media.codesnap-nvim" },
  { import = "astrocommunity.media.cord-nvim" },
  --  { import = "astrocommunity.media.pets-nvim" },
  -- { import = "astrocommunity.note-taking.venn-nvim" },
  -- { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.programming-language-support.web-tools-nvim" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  -- { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  -- { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.blade" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.java" },

  { import = "astrocommunity.pack.hyprlang" },
  -- { import = "astrocommunity.lsp.nvim-java" },
  -- { import = "astrocommunity.recipes.picker-nvchad-theme" },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "/usr/lib/jvm/java-11-openjdk/",
              },
              {
                name = "JavaSE-17",
                path = "/usr/lib/jvm/java-17-openjdk/",
              },
              {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-21-openjdk/",
              },
            },
          },

          cleanup = {
            actionsOnSave = {
              "invertEquals",
              "addOverride",
              "addDeprecated",
              -- "addFinalModifier",
              -- "qualifyMembers",
              -- "qualifyStaticMembers",
              -- "stringConcatToTextBlock",
              -- "instanceofPatternMatch",
              -- "lambdaExpression",
              -- "switchExpression",
            },
          },
          codeGeneration = {
            tostring = {
              skipNullValues = true,
              listArrayContents = true,
              template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
            hashCodeEquals = {
              useInstanceof = true,
              useJava7Objects = true,
            },
            generateComments = false,
            insertLocation = true,
          },
        },
        format = {
          enabled = true,
          settings = {
            url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
            profile = "GoogleStyle",
          },
        },
      },
    },
  },
}
