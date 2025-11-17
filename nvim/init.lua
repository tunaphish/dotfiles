vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

require("config.lazy")

-- TypeScript LSP 
vim.lsp.enable({
  "vtsls",
})

-- Snacks Explorer (file browser)
vim.keymap.set("n", "<leader>e", function()
  require("snacks").explorer()
end, { desc = "Open Snacks Explorer" })

-- Snacks Picker (fuzzy finder for files)
vim.keymap.set("n", "<leader>ff", function()
  require("snacks").picker("files")
end, { desc = "Find files (Snacks)" })

-- Snacks Picker (buffers)
vim.keymap.set("n", "<leader>fb", function()
  require("snacks").picker("buffers")
end, { desc = "Find buffers (Snacks)" })

