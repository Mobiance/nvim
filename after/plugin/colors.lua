vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme kanagawa]])

function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "Normalfloat", {bg = "none" })
end

ColorMyPencils()
