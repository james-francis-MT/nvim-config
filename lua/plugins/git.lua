return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({})
        local gs = require("gitsigns")

        vim.keymap.set("n", "<leader>gb", gs.toggle_current_line_blame)
        vim.keymap.set("n", "<leader>gh", gs.preview_hunk)
    end,
}
