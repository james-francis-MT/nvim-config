require("config.lazy")

-- Option j, k
vim.keymap.set("n", "∆", "<cmd>cnext<CR>")
vim.keymap.set("n", "˚", "<cmd>cprev<CR>")

-- Rebind c-c to ecs
vim.keymap.set("i", "<C-c>", "<Esc>")

-- paste without overriding buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

vim.keymap.set("n", "<space>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end)

vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.termguicolors = true
vim.diagnostic.config({ virtual_text = true })
vim.opt.scrolloff = 10
