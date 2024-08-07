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





-- moving through window fast
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- map double ESC to exit terminal-mode
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]])

-- closing window
vim.keymap.set("n", "<Esc><Esc>", "ZZ")
