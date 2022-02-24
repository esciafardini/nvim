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
let @y = "v%y"
let @p = "v%p"
let @x = "v%x"
let @e = ",ee"
let @r = ",er"
let @w = ",ew"
let @b = ",eb"
let @v = ",lv"
let @z = ",ece"
let @k = ",ecr"

"Debug Tools
let @s = ",w:€kblog/spy("
let @d = ",wlog/daff zz("
let @t = 'i(aclaimant.services.core.db.customer-schema.fns/transaction-in-schema "lli (llhhhhiq€kbl'
let @g = ",[&h%hi :as argsll%"
let @u = "lll kri€kb€kb€kb€kb€kb€kb€kb€kb€kbl%"

let @a='"Vim''s quote handling is a little tricky"'

let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
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
keymap("n", "<Space>5", "@5", opts)
keymap("n", "<Space>7", "@7", opts)
keymap("n", "<Space>8", "@8", opts)
keymap("n", "<Space>9", "@9", opts)
keymap("n", "<Space>e", "@e", opts)
keymap("n", "<Space>r", "@r", opts)
keymap("n", "<Space>w", "@w", opts)
keymap("n", "<Space>ks", "@k", opts)
keymap("n", "<Space>kb", "@b", opts)
keymap("n", "<Space>yy", "@y", opts)
keymap("n", "<Space>yp", "@p", opts)

-- Navigate Windows and Buffers
keymap("n", "<Space>+", ":bnext<CR>", opts)
keymap("n", "<Space>=", ":bnext<CR>", opts)
keymap("n", "<Space>-", ":bprevious<CR>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-n>", "<C-w>j", opts)
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


