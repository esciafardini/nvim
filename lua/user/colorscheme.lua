vim.cmd [[
try
  colorscheme tokyonight
  highlight LineNr guifg=#97c8e6
  hi Comment guifg=#9babb0
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
