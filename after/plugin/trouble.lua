vim.keymap.set("n", "<leader>tt", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics<cr>",
  {silent = true, noremap = true}
)
