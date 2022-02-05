local opts = { noremap = true, silent = true }

local term_opts = { silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
vim.cmd [[

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i

let @k = "f(v%xh"
let @b = "F)v%xh"
let @c = "v%y"
let @y = "v%y"
let @p = "v%p"
let @e = ",ee"
let @r = ",er"
let @w = ",ew"

let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:sexp_filetypes = ''

function! s:vim_sexp_mappings()
  nmap <silent><buffer> <Space>ms    <Plug>(sexp_splice_list)
  nmap <silent><buffer> <Space>kr    <Plug>(sexp_raise_element)
  nmap <silent><buffer> <M-right>    <Plug>(sexp_emit_head_element)
  nmap <silent><buffer> <C-left>     <Plug>(sexp_emit_tail_element)
  nmap <silent><buffer> <M-left>     <Plug>(sexp_capture_prev_element)
  nmap <silent><buffer> <C-right>    <Plug>(sexp_capture_next_element)
  nmap <silent><buffer> <Space>w[    <Plug>(sexp_square_head_wrap_list)
  nmap <silent><buffer> <Space>w{    <Plug>(sexp_curly_head_wrap_list)
  nmap <silent><buffer> <Space>w(    <Plug>(sexp_round_head_wrap_list)
endfunction

augroup VIM_SEXP_MAPPING
  autocmd!
  autocmd FileType clojure,scheme,lisp,timl call s:vim_sexp_mappings()
augroup END
]]
-- :nnoremap <Leader>E I<e><ESC>A</e><ESC>
-- My Keybindings
keymap("n", "<Space>0", "<C-w>c", opts)
keymap("n", "<Space>1", "<C-w>o", opts)
keymap("n", "<Space>2", "<C-w>s", opts)
keymap("n", "<Space>3", "<C-w>v", opts)
keymap("n", "<Space>o", "<C-w>w", opts)
keymap("n", "<Space>j", "kJ", opts)
keymap("n", "<Space>r", "dv", opts)
--More Clojure
keymap("n", "<Space>e", "@e", opts)
keymap("n", "<Space>r", "@r", opts)
keymap("n", "<Space>w", "@w", opts)
keymap("n", "<Space>ks", "@k", opts)
keymap("n", "<Space>kb", "@b", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-n>", "<C-w>j", opts)
keymap("n", "<C-i>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-q>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-a>", ":vertical resize +2<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)


