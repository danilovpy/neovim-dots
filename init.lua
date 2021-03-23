local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

vim.cmd [[packadd packer.nvim]]
local packer = require'packer'
packer.startup(function(use)
  use 'prettier/vim-prettier'
end)
-- load plugins
require("pluginsList.lua")
require("web-devicons.lua")

require("utils.lua")
require("nvimTree.lua")
require("bufferline.lua")
require("statusline.lua")
require("telescope-nvim.lua")


-- lsp
require("nvim-lspconfig.lua")
require("nvim-compe.lua")
require("gitsigns.lua")

require "colorizer".setup()

local cmd = vim.cmd
local g = vim.g
local indent = 2

cmd "colorscheme base16-gruvbox-dark-hard"
cmd "syntax enable"
cmd "syntax on"

g.auto_save = 0
g.indentLine_enabled = 1
g.indentLine_char_list = {"▏"}

g.mapleader = " "

require("treesitter.lua")
require("mappings.lua")

-- highlights
cmd("hi LineNr guibg=NONE")
cmd("hi SignColumn guibg=NONE")
cmd("hi VertSplit guibg=NONE")
cmd("hi DiffAdd guifg=#282828 guibg = none")
cmd("hi DiffChange guifg =#3A3E44 guibg = none")
cmd("hi DiffModified guifg =#282828 guibg = none")
cmd("hi EndOfBuffer guifg=#282c34")

cmd("hi TelescopeBorder   guifg=#3e4451")
cmd("hi TelescopePromptBorder   guifg=#3e4451")
cmd("hi TelescopeResultsBorder  guifg=#282828")
cmd("hi TelescopePreviewBorder  guifg=#282828")
cmd("hi PmenuSel  guibg=#98c379")

-- tree folder name , icon color
cmd("hi NvimTreeFolderIcon guifg = #fe8019")
cmd("hi NvimTreeFolderName guifg = #504945")
cmd("hi NvimTreeIndentMarker guifg=#665c54")

cmd("hi Normal guibg=NONE ctermbg=NONE")

require("nvim-autopairs").setup()

require("lspkind").init(
    {
        File = " "
    }
)

cmd("hi CustomExplorerBg guibg=#1d2021")

vim.api.nvim_exec(
    [[
augroup NvimTree 
  au!
  au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
 augroup END
 ]],
    false
)

