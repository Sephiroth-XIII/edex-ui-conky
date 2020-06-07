home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')

Separator = {}

local firstPos = 1 * ResolutionMultiplier
local secondPos = 7 * ResolutionMultiplier
local thirdPos = 75 * ResolutionMultiplier

Separator.newLine = FontManager.applyComponentFont(Font.newLine, "\n")

Separator.headerLine = "${voffset -10}${goto " .. firstPos .. "}"
			.. "${" .. Colors.separator .. "}"
			.. FontManager.applyComponentFont(Font.separator,
						"|" .. string.rep("—", 49) .. "|")

Separator.divider = Separator.newLine
			.."${goto " .. secondPos .. "}"
			.. "${" .. Colors.separator .. "}"
			.. FontManager.applyComponentFont(Font.separator,
						"|" .. string.rep("—", 47) .. "|")
			.. Separator.newLine

Separator.systemPanelGraphDivider = Separator.newLine
			.. "${goto " .. thirdPos .. "}"
			.. "${" .. Colors.separator .. "}"
			.. FontManager.applyComponentFont(Font.graphSeparator,
						string.rep("-", 44))
			.. Separator.newLine

Separator.networkPanelGraphDivider = Separator.newLine
			.. "${goto " .. secondPos .. "}"
			.. "${" .. Colors.separator .. "}"
			.. FontManager.applyComponentFont(Font.graphSeparator,
						string.rep("-", 56))
			.. Separator.newLine

