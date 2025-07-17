local opt = vim.opt
opt.number = true
opt.mouse=a
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.autoindent = true
opt.cursorline = true
-- opt.autowrite = true
opt.tabstop = 2
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.termguicolors = true
-- opt.wrap = false
-- vim.opt.clipboard = "unnamedplus"
opt.scrolloff = 10
vim.o.autoread = true
opt.background = "dark"
opt.backspace = "indent,eol,start"

local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

   --You can "comment out" the line below after lazy.nvim is installed
  -- lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)

  require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end
lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}
lazy.setup({
  {import = 'core.plugins'},
  {import = 'core.themes'}
})
vim.cmd("colorschem tokyonight-night")


