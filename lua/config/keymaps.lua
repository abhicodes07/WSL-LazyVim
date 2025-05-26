-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode jk" })

-- clear search highlights
keymap.set("n", "<leader>xh", ":nohl<CR>", { desc = "Clear search highlights" })

-- noice
keymap.set("n", "<leader>nh", "<cmd>Noice snacks<CR>", { desc = "Noice history" })
keymap.set("n", "<leader>nl", "<cmd>Noice snacks<CR>", { desc = "Last message" })

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
keymap.set("n", "<leader>sz", ":split<Return>", opts)
keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--Move window
keymap.set("n", "sh", "<C-w>h", { desc = "move window left" })
keymap.set("n", "sk", "<C-w>k", { desc = "move window up" })
keymap.set("n", "sj", "<C-w>j", { desc = "move window down" })
keymap.set("n", "sl", "<C-w>l", { desc = "move window right" })

-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- huefy
keymap.set("n", "<leader>hh", "<cmd>Huefy<CR>", { desc = "Pick color" })
keymap.set("n", "<leader>hs", "<cmd>Shades<CR>", { desc = "Pick Shades" })

-- diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
