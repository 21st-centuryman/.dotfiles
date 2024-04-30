-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>cac", "<cmd>:Cargo check<cr>", { desc = "Cargo check" })
map("n", "<leader>cab", "<cmd>:Cargo build<cr>", { desc = "Cargo build" })
map("n", "<leader>cat", "<cmd>:Cargo test -- --nocapture<cr>", { desc = "Cargo test" })
map("n", "<leader>car", "<cmd>:Cargo build --release<cr>", { desc = "Cargo release build" })
