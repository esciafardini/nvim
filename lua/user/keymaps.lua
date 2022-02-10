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

  nmap <silent><buffer> <C-left>     <Plug>(sexp_emit_tail_element)
  nmap <silent><buffer> <C-right>    <Plug>(sexp_capture_next_element)

  xmap <silent><buffer> af              <Plug>(sexp_outer_list)
  omap <silent><buffer> af              <Plug>(sexp_outer_list)
  xmap <silent><buffer> if              <Plug>(sexp_inner_list)
  omap <silent><buffer> if             <Plug>(sexp_inner_list)
  xmap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
  omap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
  xmap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
  omap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
  xmap <silent><buffer> as              <Plug>(sexp_outer_string)
  omap <silent><buffer> as              <Plug>(sexp_outer_string)
  xmap <silent><buffer> is              <Plug>(sexp_inner_string)
  omap <silent><buffer> is              <Plug>(sexp_inner_string)
  xmap <silent><buffer> ae              <Plug>(sexp_outer_element)
  omap <silent><buffer> ae              <Plug>(sexp_outer_element)
  xmap <silent><buffer> ie              <Plug>(sexp_inner_element)
  omap <silent><buffer> ie              <Plug>(sexp_inner_element)
  nmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  xmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  omap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  nmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  xmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  omap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  nmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  xmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  omap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  nmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  xmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  omap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  nmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  xmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  omap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  nmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  xmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  omap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  nmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  xmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  omap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  nmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  xmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  omap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  nmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  xmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  omap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  nmap <silent><buffer> ==              <Plug>(sexp_indent)
  nmap <silent><buffer> =-              <Plug>(sexp_indent_top)
  nmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
  xmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
  nmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
  xmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
  nmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
  xmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
  nmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
  xmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
  nmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
  xmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
  nmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
  xmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
  nmap <silent><buffer> <LocalLeader>w  <Plug>(sexp_round_head_wrap_element)
  xmap <silent><buffer> <LocalLeader>w  <Plug>(sexp_round_head_wrap_element)
  nmap <silent><buffer> <LocalLeader>W  <Plug>(sexp_round_tail_wrap_element)
  xmap <silent><buffer> <LocalLeader>W  <Plug>(sexp_round_tail_wrap_element)
  nmap <silent><buffer> <LocalLeader>e[ <Plug>(sexp_square_head_wrap_element)
  xmap <silent><buffer> <LocalLeader>e[ <Plug>(sexp_square_head_wrap_element)
  nmap <silent><buffer> <LocalLeader>e] <Plug>(sexp_square_tail_wrap_element)
  xmap <silent><buffer> <LocalLeader>e] <Plug>(sexp_square_tail_wrap_element)
  nmap <silent><buffer> <LocalLeader>e{ <Plug>(sexp_curly_head_wrap_element)
  xmap <silent><buffer> <LocalLeader>e{ <Plug>(sexp_curly_head_wrap_element)
  nmap <silent><buffer> <LocalLeader>e} <Plug>(sexp_curly_tail_wrap_element)
  xmap <silent><buffer> <LocalLeader>e} <Plug>(sexp_curly_tail_wrap_element)
  nmap <silent><buffer> <LocalLeader>h  <Plug>(sexp_insert_at_list_head)
  nmap <silent><buffer> <LocalLeader>l  <Plug>(sexp_insert_at_list_tail)
  nmap <silent><buffer> <LocalLeader>@  <Plug>(sexp_splice_list)
  nmap <silent><buffer> <LocalLeader>o  <Plug>(sexp_raise_list)
  xmap <silent><buffer> <LocalLeader>o  <Plug>(sexp_raise_list)
  nmap <silent><buffer> <LocalLeader>O  <Plug>(sexp_raise_element)
  xmap <silent><buffer> <LocalLeader>O  <Plug>(sexp_raise_element)
  nmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
  xmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
  nmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
  xmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
  nmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
  xmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
  nmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
  xmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
  nmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  xmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  imap <silent><buffer> <BS>            <Plug>(sexp_insert_backspace)
  imap <silent><buffer> "               <Plug>(sexp_insert_double_quote)
  imap <silent><buffer> (               <Plug>(sexp_insert_opening_round)
  imap <silent><buffer> )               <Plug>(sexp_insert_closing_round)
  imap <silent><buffer> [               <Plug>(sexp_insert_opening_square)
  imap <silent><buffer> ]               <Plug>(sexp_insert_closing_square)
  imap <silent><buffer> {               <Plug>(sexp_insert_opening_curly)
  imap <silent><buffer> }               <Plug>(sexp_insert_closing_curly)
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
keymap("n", "<Space>,", "F(", opts)
keymap("n", "<Space>.", "f)", opts)
--More Clojure
keymap("n", "<Space>e", "@e", opts)
keymap("n", "<Space>r", "@r", opts)
keymap("n", "<Space>w", "@w", opts)
keymap("n", "<Space>ks", "@k", opts)
keymap("n", "<Space>kb", "@b", opts)

-- Navigate Windows and Buffers
keymap("n", "<Space>-", ":bnext<CR>", opts)
keymap("n", "<Space>=", ":bprevious<CR>", opts)
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


