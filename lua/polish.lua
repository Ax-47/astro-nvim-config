-- ใช้ clipboard ร่วมกับระบบ
vim.opt.clipboard:append "unnamedplus"

-- ออกจาก terminal mode ด้วยปุ่ม Esc
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>jo", function() require("jdtls").organize_imports() end)
--
local wk = require "which-key"

wk.add {
  { "<leader>j", group = "Java Code Action" },
  { "<leader>ja", desc = "Generate getters/setters" },
  { "<leader>jc", desc = "Generate constructor" },
  { "<leader>jt", desc = "Generate toString()" },
  { "<leader>je", desc = "Generate equals/hashCode" },
  { "<leader>jo", desc = "Organize imports" },
  { "<leader>jg", desc = "Generate code action" },
}
vim.keymap.set(
  "n",
  "<leader>ja",
  function()
    vim.lsp.buf.code_action {
      context = {
        diagnostics = {},
        only = { "source.generate.accessors" },
      },
    }
  end,
  { desc = "Generate getters/setters" }
)

vim.keymap.set(
  "n",
  "<leader>jc",
  function()
    vim.lsp.buf.code_action {
      context = {
        diagnostics = {},
        only = { "source.generate.constructors" },
      },
    }
  end,
  { desc = "Generate constructor" }
)

vim.keymap.set(
  "n",
  "<leader>jt",
  function()
    vim.lsp.buf.code_action {
      context = {
        diagnostics = {},
        only = { "source.generate.toString" },
      },
    }
  end,
  { desc = "Generate toString()" }
)

vim.keymap.set(
  "n",
  "<leader>je",
  function()
    vim.lsp.buf.code_action {
      context = {
        diagnostics = {},
        only = { "source.generate.hashCodeEquals" },
      },
    }
  end,
  { desc = "Generate equals/hashCode" }
)

vim.keymap.set(
  "n",
  "<leader>jo",
  function()
    vim.lsp.buf.code_action {
      context = {
        diagnostics = {},
        only = { "source.organizeImports" },
      },
    }
  end,
  { desc = "Organize imports" }
)
vim.keymap.set("n", "<leader>jg", function() vim.lsp.buf.code_action() end, { desc = "Generate Code Action" })
