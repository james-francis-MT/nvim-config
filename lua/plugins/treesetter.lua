return {
    "nvim-treesitter/nvim-treesitter",
    commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "javascript" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
