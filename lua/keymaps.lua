-- move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in middle when navigating
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste on top without replacing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without saving to buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- replace C-c with esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without storing in buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
