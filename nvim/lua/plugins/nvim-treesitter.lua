return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	opts = {
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"rust",
			"vala",
			"bash",
			"fish",
			"go",
			"gomod",
			"typescript",
			"javascript",
			"python",
		},

		auto_install = true,

		highlight = {
			enable = true,
		},
	},
}
