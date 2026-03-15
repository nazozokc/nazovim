return {
	"vim-test/vim-test",
	event = "VeryLazy",
	dependencies = {
		"preservim/vimux",
	},
	config = function()
		vim.keymap.set("n", "<leader>vt", ":TestNearest<CR>", { desc = "Test nearest" })
		vim.keymap.set("n", "<leader>VT", ":TestFile<CR>", { desc = "Test file" })
		vim.keymap.set("n", "<leader>va", ":TestSuite<CR>", { desc = "Test suite" })
		vim.keymap.set("n", "<leader>vl", ":TestLast<CR>", { desc = "Test last" })
		vim.keymap.set("n", "<leader>vg", ":TestVisit<CR>", { desc = "Test visit" })
		vim.cmd("let test#strategy = 'vimux'")
	end,
}
