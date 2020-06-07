home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local firstPos = 25 * ResolutionMultiplier
local secondPos = 115 * ResolutionMultiplier
local thirdPos = 270 * ResolutionMultiplier

DateUptimeBatteryInfo = "${goto " .. firstPos .. "}"
	.. "${" .. Colors.blockSubHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockHeaderAlt,
		"${time %Y}${goto " .. secondPos .. "}UPTIME${goto " .. thirdPos .. "}POWER")
	.. Separator.newLine
	.. "${goto " .. firstPos .. "}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockHeader,
		"${time %b %d}${goto " .. secondPos .. "}${uptime}${goto " .. thirdPos .. "}${battery_percent BAT0}%")

