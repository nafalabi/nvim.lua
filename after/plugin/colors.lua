require('onedark').setup({
	style = 'deep'
})

function UpdateColorScheme(color)
	--color = color or "rose-pine"
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

UpdateColorScheme()

