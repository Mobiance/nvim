return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvim-treesitter/nvim-treesitter',
	},
	{

		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }

	},
	{
		'mbbill/undotree',
		event = "VeryLazy"
	},
	{
		'tpope/vim-fugitive',
		event = "VeryLazy"
	},
}
