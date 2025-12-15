return {
  -- The plugin repository
  "lervag/vimtex",
  -- Conditions for lazy loading (this will depend on 'lazy.nvim' API)
  event = "BufRead *.tex",

  -- Plugin configuration function
  init = function()
    -- Use init for configuration, don't use the more common "config".
    -- vim.g.vimtex_view_method = "zathura"
  end,
}
