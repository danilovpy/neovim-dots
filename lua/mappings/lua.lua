local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo



local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybind list
map("", "<leader>c", '"+y')

-- open terminals  
map("n", "<C-b>" , [[<Cmd> vnew term://bash<CR>]] , opt) -- split term vertically , over the right  
map("n", "<C-x>" , [[<Cmd> split term://bash | resize 10 <CR>]] , opt) -- split term vertically , over the right  



local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(
      mode,
      key,
      result,
      {noremap = true, silent = true}
    )
  end



key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'JK', '<ESC>')
key_mapper('v', 'jK', '<ESC>')
key_mapper('n', '<leader>1', '1gt')
key_mapper('n', '<leader>2', '2gt')
key_mapper('n', '<leader>3', '3gt')
key_mapper('n', '<leader>4', '4gt')
key_mapper('n', '<leader>5', '5gt')
key_mapper('n', '<leader>6', '6gt')
key_mapper('n', '<leader>7', '7gt')
key_mapper('n', '<leader>8', '8gt')
key_mapper('n', '<leader>9', '9gt')
key_mapper('n', '<C-Left>', ':tabprevious<CR>')
key_mapper('n', '<C-Right>', ':tabnext<CR>')
key_mapper('n', '<leader><leader>', ':noh<CR>')

g.python3_host_prog = '/home/sergey/.pyenv/versions/py3nvim/bin/python'

