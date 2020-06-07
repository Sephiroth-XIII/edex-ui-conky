home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/Utils.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local firstPos = 15 * ResolutionMultiplier
local secondPos = 115 * ResolutionMultiplier
local thirdPos = 270 * ResolutionMultiplier

local NetworkStatusHeaderSection = "${goto " .. firstPos .. "}"
		.. "${" .. Colors.blockHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockHeader,
			"${voffset -3}NETWORK STATUS")
		.. "${alignr}"
		.. "${" .. Colors.blockSubHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockSubHeader,
			"Interface: ${gw_iface}     ")

local NetworkStatusDetailsSection = "${goto " .. firstPos .. "}"
	.. "${" .. Colors.blockSubHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockHeaderAlt,
		"STATE${goto " .. secondPos .. "}IPv4${goto " .. thirdPos .. "}PING")
	.. Separator.newLine
	.. "${goto " .. firstPos .. "}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockHeader,
		"${execi 10 sh ~/dotfiles/conky/configs/bashscripts/pingtest.sh}${goto " .. secondPos .. "}${addr " .. Utils.findInterface() .. "}${goto " .. thirdPos .. "}${execi 10 sh ~/dotfiles/conky/configs/bashscripts/pinglatency.sh}ms")


NetworkStatusInfo = table.concat({
	NetworkStatusHeaderSection,
	NetworkStatusDetailsSection
}, Separator.newLine .. "${voffset 10}")

