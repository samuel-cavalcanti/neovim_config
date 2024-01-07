vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- desable Arrows insert mode
-- vim.keymap.set("i", "<Up>", "<Nop>")
-- vim.keymap.set("i", "<Down>", "<Nop>")
-- vim.keymap.set("i", "<Left>", "<Nop>")
-- vim.keymap.set("i", "<Right>", "<Nop>")


-- disable arrows normal mode
-- vim.keymap.set("n", "<Up>", "<Nop>")
-- vim.keymap.set("n", "<Down>", "<Nop>")
-- vim.keymap.set("n", "<Left>", "<Nop>")
-- vim.keymap.set("n", "<Right>", "<Nop>")

-- Ctrl + s: save the file
vim.keymap.set("n", "<C-s>", "<Esc>:write!<Esc>")
--
-- Pressing Space + p will paste the content without losing it
vim.keymap.set("x", "<leader>p", [["_dP]])

