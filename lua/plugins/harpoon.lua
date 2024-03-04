return {
	-- {{{ Define the Harpoon lazy.vim specificaiton.

	"ThePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},

	opts = function(_, opts)
		opts.settings = {
			save_on_toggle = false,
			sync_on_ui_close = false,
			save_on_change = true,
			enter_on_sendcmd = false,
			tmux_autoclose_windows = false,
			excluded_filetypes = { "harpoon", "alpha", "dashboard", "gitcommit" },
			mark_branch = false,
			key = function()
				return vim.loop.cwd()
			end,
		}
	end,

	config = function(_, opts)
		--[[
        local harpoon = require("harpoon")

		harpoon.setup(opts)

		-- <<<Harpoon>>>
		vim.keymap.set("n", "<leader>ht", require("harpoon.ui").toggle_quick_menu, { desc = "Toggle Harpoon Menu" })
		vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add file to harpoon list" })
		for pos = 0, 9 do
			vim.keymap.set("n", "<leader>h" .. pos, function()
				require("harpoon.ui").nav_file(pos)
			end, { desc = "Move to harpoon mark #" .. pos })
		end
        ]]--

		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-k>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "[h", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "]h", function()
			harpoon:list():next()
		end)
	end,

	-- ----------------------------------------------------------------------- }}}
}
