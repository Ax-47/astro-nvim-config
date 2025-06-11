-- ใช้ clipboard ร่วมกับระบบ
vim.opt.clipboard:append("unnamedplus")

-- ออกจาก terminal mode ด้วยปุ่ม Esc
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true })
