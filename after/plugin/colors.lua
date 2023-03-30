require('onedark').setup({
	style = 'deep'
})

DefaultColorScheme = "gruvbox"
-- DefaultColorScheme = "onedark"
-- DefaultColorScheme = "dracula"

function UpdateColorScheme(color) -- available color: rose-pine onedark
	color = color or DefaultColorScheme
    if (color == 'gruvbox') then vim.o.background = 'dark' end
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

UpdateColorScheme()

