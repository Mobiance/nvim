vim.opt.guicursor = ""

vim.filetype.add({ extension = { templ = "templ" } })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('config') .. '/undo'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.clipboard = 'unnamedplus'

if vim.fn.has('wsl') == 1 then
        vim.g.clipboard = {
                name = "win32yank-wsl",
                copy = {
                        ["+"] = "win32yank.exe -i --crlf",
                        ["*"] = "win32yank.exe -i --crlf",
                },
                paste = {
                        ["+"] = "win32yank.exe -o --lf",
                        ["*"] = "win32yank.exe -o --lf",
                },
                cache_enabled = 0,
        }
end
