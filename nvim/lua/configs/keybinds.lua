-- Clear highlight on search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Highlight on Search" })

-- Disable arrow keys (for practicality)
vim.keymap.set("n", "<Left>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Right>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Up>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Down>", "<nop>", { desc = "Disables Arrow Keys" })

-- Navigate through split instances
vim.keymap.set("n", "<A-h>", "<C-w><C-h>", { desc = "Go to tab on the left" })
vim.keymap.set("n", "<A-l>", "<C-w><C-l>", { desc = "Go to tab on the right" })
vim.keymap.set("n", "<A-j>", "<C-w><C-j>", { desc = "Go to tab on the bottom" })
vim.keymap.set("n", "<A-k>", "<C-w><C-k>", { desc = "Go to tab on the top" })

-- Telescope keybinds
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-o>", builtin.find_files, { desc = "Telescope find files"})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope grep files"})

-- Toggle neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", {})

-- Returning to normal mode while in terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- LSP Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- autocmd to highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
