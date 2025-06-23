local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- options ------------------------------------------
opt.guicursor = ""
g.have_nerd_font = true

o.showmode = false

o.clipboard = "unnamedplus"
o.cursorline = false
-- o.cursorlineopt = "number"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.fillchars = { eob = " " }
opt.hlsearch = false
opt.incsearch = true
o.ignorecase = true
o.smartcase = true
o.mouse = "a"
opt.wrap = false

-- Numbers
o.number = true
opt.relativenumber = true
o.numberwidth = 2
o.ruler = false

opt.scrolloff = 7
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.swapfile = false
opt.backup = false

opt.termguicolors = true
opt.backspace = "indent,eol,start"

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")
