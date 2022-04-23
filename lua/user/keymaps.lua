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

"ALL MACROS - Assisgned Elsewhere
let @a='"Vim''s quote handling is a little tricky"'
let @b = ",eb"
let @c = "cpp"
let @d = ",wlog/daff zz("
let @e = ",ee"
let @f = ",w"
let @g = ",[&h%hi :as argsll%"
let @h = ",ls"
let @i = ",["
let @l = "c!!"
let @j = ",e["
let @k = ",ecr"
let @m = ",e{"
let @n = ",ef"
let @p = "v%p"
let @r = ",er"
let @s = ",w:€kblog/spy("
let @t = 'i(aclaimant.services.core.db.customer-schema.fns/transaction-in-schema "lli (llhhhhiq€kbl'
let @u = "lll kri€kb€kb€kb€kb€kb€kb€kb€kb€kbl%"
let @v = ",lv"
let @w = ",ew"
let @x = "v%x"
let @y = "v%y"
let @z = ",ece"
"NEED 


let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:rainbow_active = 1


let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
]]

-- My Keybindings
keymap("n", "<Space>0", "<C-w>c", opts)
keymap("n", "<Space>1", "<C-w>o", opts)
keymap("n", "<Space>2", "<C-w>s", opts)
keymap("n", "<Space>3", "<C-w>v", opts)
keymap("n", "<Space>o", "<C-w>w", opts)

--More Clojure
keymap("n", "<Space>e", "@e", opts)
keymap("n", "<Space>r", "@r", opts)
keymap("n", "<Space>w", "@w", opts)

-- Navigate Windows and Buffers
keymap("n", "<Space><Left>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<Space><Right>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<Space>4", ":BufferLineMovePrev<CR>", opts)
keymap("n", "<Space>5", ":BufferLineMoveNext<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)


