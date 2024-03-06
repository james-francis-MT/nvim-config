return {
	"danymat/neogen",
	config = function()
		require("neogen").setup({
			snippet_engine = "luasnip",
			languages = {
				python = {
					template = {
						annotation_convention = "google_docstrings",
					},
				},
			},
		})
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<Leader>ng", ":lua require('neogen').generate()<CR>", opts)
	end,
}
