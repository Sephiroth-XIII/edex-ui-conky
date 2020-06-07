home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Theme.lua')

FontManager = {}

Font = Theme.selectedTheme.fontPalette

function FontManager.applyComponentFont(font, text)
	return font
		.. text
		.. "${font}"
end

