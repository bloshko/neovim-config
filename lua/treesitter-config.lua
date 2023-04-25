require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"bash",
		"css",
		"html",
		"dockerfile",
		"gitignore",
		"graphql",
		"json",
		"tsx",
		"gitcommit",
		"help",
		"javascript",
		"typescript",
		"c",
		"lua",
		"vim",
		"help",
		"query",
	},

	autotag = {
		enable = true,
	},

	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
	},
})
