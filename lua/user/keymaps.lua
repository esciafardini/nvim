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
--Copy Paste S-exp
keymap("n", "<Space>c", "v%y", opts)
keymap("n", "<Space>p", "v%p", opts)
--More Clojure
keymap("n", "<Space>e", "@e", opts)
keymap("n", "<Space>r", "@r", opts)
keymap("n", "<Space>w", "@w", opts)
keymap("n", "<Space>ks", "@k", opts)
keymap("n", "<Space>kb", "@b", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<Space>-", ":bnext<CR>", opts)
keymap("n", "<Space>+", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

