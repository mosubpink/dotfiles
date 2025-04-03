return{
  'akinsho/bufferline.nvim', 
  dependencies = {'nvim-tree/nvim-web-devicons'},
  opts = { },

  --shortcuts
  vim.keymap.set("", "<leader>1", "<cmd>BufferLineCycleNext<cr>", {desc = "Move to the Next tab"}),
  vim.keymap.set("", "<leader>2", "<cmd>BufferLineCyclePrev<cr>", {desc = "Move to the Prevois tab"})
}
