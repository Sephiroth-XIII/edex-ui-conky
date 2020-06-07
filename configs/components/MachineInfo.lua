home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local firstPos = 25 * ResolutionMultiplier
local secondPos = 165 * ResolutionMultiplier
local thirdPos = 270 * ResolutionMultiplier

MachineInfo = "${goto " .. firstPos .. "}"
	.. "${voffset -3}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockDetailsLabel,
		"MANUFACTURER"
		.. "${goto " .. secondPos .. "}MODEL"
		.. "${goto " .. thirdPos .. "}CHASSIS")
	.. Separator.newLine 
	.. "${goto " .. firstPos .. "}"
	.. "${" .. Colors.blockSubHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockDetailsValue,
		"${execi 1000 cat /sys/class/dmi/id/board_vendor}"
		.. "${goto " .. secondPos .. "}${execi 1000 cat /sys/class/dmi/id/product_name}"
		.. "${goto " .. thirdPos .. "}${execi 1000 cat /sys/class/dmi/id/product_family}")

