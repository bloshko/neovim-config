local lsp = require("lsp-zero").preset({
	name = "recommended",
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = true,
	configure_diagnostics = true,
	call_servers = "local",
	cmp_capabilities = true,
	sign_icons = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "",
	},
})

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"rust_analyzer",
	"gopls",
})

lsp.nvim_workspace()

lsp.setup()
