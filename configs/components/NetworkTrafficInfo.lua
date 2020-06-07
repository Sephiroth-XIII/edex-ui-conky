home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/Utils.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local firstPos = 15 * ResolutionMultiplier
local graphHeight = 100 * ResolutionMultiplier
local graphWidth = 320 * ResolutionMultiplier

local NetworkTrafficHeaderSection = "${goto " .. firstPos .. "}"
		.. "${" .. Colors.blockHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockHeader,
			"${voffset -3}NETWORK TRAFFIC")
		.. "${alignr}"
		.. "${" .. Colors.blockSubHeaderAlt .. "}"
		.. FontManager.applyComponentFont(Font.blockSubHeader,
			"UP "
			.. "${" .. Colors.blockHeader .. "}"
			.. "/ DOWN, B/S     ")

local NetworkTrafficDetailsSection = "${goto " .. firstPos .. "}"
		.. "${" .. Colors.blockSubHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockSubHeaderLabel,
			"TOTAL")
		.. "${alignr}"
		.. "${" .. Colors.blockSubHeaderAlt .. "}"
		.. FontManager.applyComponentFont(Font.blockSubHeaderValue,
			"${upspeed " .. Utils.findInterface() .. "} UP "
			.. "${" .. Colors.blockHeader .. "}"
			.. "/ ${downspeed " .. Utils.findInterface() .. "} DOWN     ")

local NetworkTrafficGraphSection = "${voffset -9}"
		.. Separator.networkPanelGraphDivider
		.. "${goto " .. firstPos .. "}"
		.. "${downspeedgraph " .. Utils.findInterface() .. " " .. graphHeight .. "," .. graphWidth .. " " .. Colors.netGraphGradientStart .. " " .. Colors.netGraphGradientEnd .. " -t -l}"
		.. Separator.newLine
		.. "${goto " .. firstPos .. "}"
		.. "${upspeedgraph " .. Utils.findInterface() .. " " .. graphHeight .. "," .. graphWidth .. " " .. Colors.netGraphGradientStartAlt .. " " .. Colors.netGraphGradientEndAlt .. " -t -l}"
		.. Separator.networkPanelGraphDivider

NetworkTrafficInfo = table.concat({
	NetworkTrafficHeaderSection,
	NetworkTrafficDetailsSection,
	NetworkTrafficGraphSection
}, Separator.newLine)

