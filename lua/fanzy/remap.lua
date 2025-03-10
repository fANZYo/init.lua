vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/<C-r><C-w>//gI<Left><Left><Left>")

vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")

-- Telescope
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope git_files<CR>")
vim.keymap.set('n', 'gd', ":Telescope lsp_definitions<CR>")
vim.keymap.set('n', '<leader>lr', ":Telescope lsp_references<CR>")
vim.keymap.set('n', '<leader>vh', ":Telescope help_tags<CR>")
vim.keymap.set('n', '<leader>pws', ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<CR>")
vim.keymap.set('n', '<leader>pWs', ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cWORD>') })<CR>")
vim.keymap.set('n', '<leader>ps', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })<CR>")

-- Trouble
vim.keymap.set("n", "<leader>tt", ":Trouble diagnostics toggle<CR>")
vim.keymap.set('n', '[t', ":lua require('trouble').next({ skip_groups = true, jump = true })<CR>")
vim.keymap.set('n', ']t', ":lua require('trouble').previous({ skip_groups = true, jump = true })<CR>")

-- Undotree
vim.keymap.set('n', '<leader>u', ":UndotreeToggle<CR>")
