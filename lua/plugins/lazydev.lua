return {
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {
		library = {
			-- snacks.nvim の型定義も読み込む
			{ path = "snacks.nvim", words = { "Snacks" } },
			-- lazy.nvim の型定義
			{ path = "lazy.nvim", words = { "LazySpec", "LazyConfig" } },
		},
	},
}
