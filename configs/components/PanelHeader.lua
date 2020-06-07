home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

PanelHeader = {}

local firstPos = 15 * ResolutionMultiplier

function PanelHeader.renderHeader(panelName)
	return  "${goto " .. firstPos .. "}"
		.. "${" .. Colors.panelHeaderText .. "}"
		.. FontManager.applyComponentFont(Font.panelHeader
			,"PANEL${alignr}" .. panelName .. "        ")
		.. Separator.newLine 
		.. Separator.headerLine
end

