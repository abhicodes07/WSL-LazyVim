-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode jk" })

-- clear search history
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlightts" })

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", "vb_d")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<leader>tn", ":tabnext<Return>", opts)
keymap.set("n", "<leader>tp", ":tabprev<Return>", opts)

-- split window
keymap.set("n", "<leader>sh", ":split<Return>", opts)
keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostics.goto_next()
end, opts)
