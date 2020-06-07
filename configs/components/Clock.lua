home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

Clock = Separator.newLine 
	.. "${alignc}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.clock,
			"${time %H : %M : %S}")
	.. Separator.newLine

