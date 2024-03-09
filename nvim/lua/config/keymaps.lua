-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Key sequences/combinations as alternatives to <Esc>
vim.keymap.set({ "i", "v" }, "kj", "<Esc>")
vim.keymap.set({ "i", "v" }, "jk", "<Esc>")

-- Keyboard "hacks" for Italian keyboard
-- Set to true or false based on your keyboard
local useItalianKeyboardHacks = true

if (useItalianKeyboardHacks) then
	-- Key sequences/combinations as alternatives to <Esc>
	vim.keymap.set({ "i", "v" }, "<A-ò>", "<Esc>")

	-- Jump after the closing "bracket" character (], }, ), ", ')
	-- (that has been automatically inserted after the opening one),
	-- in insert mode
	vim.keymap.set("i", "<A-à>", "<Esc>la")

	vim.keymap.set("n", "è", ":bprevious<CR>")
	vim.keymap.set("n", "+", ":bnext<CR>")

	-- Insert "special" characters (not available on Italian keyboards)
	vim.keymap.set("n", "<leader>ù1", "i`", { desc = "Insert special character: `" })
	vim.keymap.set("n", "<leader>ù2", "i~", { desc = "Insert special character: ~" })
	vim.keymap.set("n", "<leader>ù0", "i改善", { desc = "Insert special characters: 改善" })
end
