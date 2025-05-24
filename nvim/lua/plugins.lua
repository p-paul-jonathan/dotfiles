-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Color Theme: Nord
	{ "shaunsingh/nord.nvim" }, -- nord
	{ "projekt0n/github-nvim-theme" }, -- github
	{ "joshdick/onedark.vim" }, -- onedark
	{ "sts10/vim-pink-moon" }, -- pink-moon
  { "ellisonleao/gruvbox.nvim" }, -- gruvbox
	{ "folke/tokyonight.nvim" }, -- tokyonight
	-- Statusline: Airline
	{
		"vim-airline/vim-airline",
		dependencies = { "vim-airline/vim-airline-themes", "tpope/vim-fugitive" },
		config = function()
			vim.g["airline#extensions#branch#enabled"] = 1
		end,
	},

	-- Auto-close pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	-- VSCode-like icons
	{ "onsails/lspkind.nvim", event = "VimEnter" },

	-- File Explorer
	-- { "preservim/nerdtree" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true, -- Close Neo-tree if it's the last window
				popup_border_style = "rounded",
				default_component_configs = {
					indent = { padding = 1 },
				},
				filesystem = {
					filtered_items = {
						visible = true, -- Show hidden files
						hide_dotfiles = false, -- Do NOT hide dotfiles (e.g., .gitignore, .env)
						hide_gitignored = false, -- Show git-ignored files
					},
				},
			})
		end,
	},
	-- Tabline
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		config = function()
			require("barbar").setup({
				animation = false,
				auto_hide = 0,
			})
		end,
		version = "^1.0.0",
	},

	-- Fuzzy Finder: Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = { hidden = true, no_ignore = true },
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
			vim.keymap.set("n", "<leader>fs", builtin.git_status, { desc = "Git Status" })
		end,
	},

	-- LSP & Mason
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim", build = ":MasonUpdate" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Completion
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- Treesitter (optional but recommended)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration
			"nvim-telescope/telescope.nvim", -- optional
		},
		config = true,
	},

	-- Comments
	{ "numToStr/Comment.nvim" },

	-- rainbowcsv
	{ "mechatroner/rainbow_csv" },

	-- code folding
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		event = "BufReadPost",
		config = function()
			-- Set fold settings
			vim.o.foldcolumn = "1" -- Show fold column
			vim.o.foldlevel = 99 -- Use high foldlevel to keep folds open
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true -- Enable folding

			-- Setup nvim-ufo
			require("ufo").setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "lsp", "indent" }
				end,
			})

			-- Optional keymaps
			vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
			vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
		end,
	},
})
