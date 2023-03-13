local autocmd = vim.api.nvim_create_autocmd

vim.cmd([[
  augroup source_zshrc
    autocmd!
    autocmd BufWritePost, BufLeave ~/.zshrc silent !source ~/.zshrc
  augroup END
]])

vim.cmd([[
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
  set clipboard+=unnamedplus
]])

vim.wo.relativenumber = true
vim.keymap.set('n', '<Leader>tr', '<Cmd>')

vim.keymap.set('n', "<C-d>", "<C-d>zz", {desc = 'Move down half the screen then center'})
vim.keymap.set('n', "<C-u>", "<C-u>zz", {desc = 'Move up half the screen then center'})
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
