require "nvchad.mappings"

local map = vim.keymap.set


-- add yours here
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save file"})
map({ "n", "v" }, "<C-q>", "<cmd> bd <cr>", { desc = "Close tab"})
map({ "n", "v" }, "<C-a>", "<cmd> q! <cr>", { desc = "Close nvin"})



map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- example 
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
