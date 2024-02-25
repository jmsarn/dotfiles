function ColorMyPencils(color)
	color = color or "solarized"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
