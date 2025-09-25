vim.lsp.enable({
	"lua_ls",
	"pylsp",
	"cssls",
	"marksman",
	"ltex"
})

vim.diagnostic.config({
	virtual_lines = false,
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	}
})
