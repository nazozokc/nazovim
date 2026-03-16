return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- カーソル前方のオブジェクトに自動ジャンプ
					keymaps = {
						-- 関数
						["af"] = { query = "@function.outer", desc = "outer function" },
						["if"] = { query = "@function.inner", desc = "inner function" },
						-- クラス
						["ac"] = { query = "@class.outer", desc = "outer class" },
						["ic"] = { query = "@class.inner", desc = "inner class" },
						-- 条件分岐
						["ai"] = { query = "@conditional.outer", desc = "outer conditional" },
						["ii"] = { query = "@conditional.inner", desc = "inner conditional" },
						-- ループ
						["al"] = { query = "@loop.outer", desc = "outer loop" },
						["il"] = { query = "@loop.inner", desc = "inner loop" },
						-- 引数
						["aa"] = { query = "@parameter.outer", desc = "outer argument" },
						["ia"] = { query = "@parameter.inner", desc = "inner argument" },
						-- ブロック
						["ab"] = { query = "@block.outer", desc = "outer block" },
						["ib"] = { query = "@block.inner", desc = "inner block" },
					},
				},

				move = {
					enable = true,
					set_jumps = true, -- jumplist に記録
					goto_next_start = {
						["]f"] = { query = "@function.outer", desc = "Next function start" },
						["]c"] = { query = "@class.outer", desc = "Next class start" },
						["]a"] = { query = "@parameter.inner", desc = "Next argument start" },
					},
					goto_next_end = {
						["]F"] = { query = "@function.outer", desc = "Next function end" },
						["]C"] = { query = "@class.outer", desc = "Next class end" },
					},
					goto_previous_start = {
						["[f"] = { query = "@function.outer", desc = "Prev function start" },
						["[c"] = { query = "@class.outer", desc = "Prev class start" },
						["[a"] = { query = "@parameter.inner", desc = "Prev argument start" },
					},
					goto_previous_end = {
						["[F"] = { query = "@function.outer", desc = "Prev function end" },
						["[C"] = { query = "@class.outer", desc = "Prev class end" },
					},
				},

				swap = {
					enable = true,
					swap_next = {
						["<leader>sn"] = { query = "@parameter.inner", desc = "Swap next argument" },
					},
					swap_previous = {
						["<leader>sp"] = { query = "@parameter.inner", desc = "Swap prev argument" },
					},
				},
			},
		})
	end,
}
