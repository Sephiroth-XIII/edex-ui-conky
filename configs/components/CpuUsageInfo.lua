home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local graphHeight = 30 * ResolutionMultiplier
local graphWidth = 260 * ResolutionMultiplier

local firstPos = 25 * ResolutionMultiplier
local secondPos = 10 * ResolutionMultiplier
local thirdPos = 75 * ResolutionMultiplier
local fourthPos = 35 * ResolutionMultiplier
local fifthPos = 115 * ResolutionMultiplier
local sixthPos = 205 * ResolutionMultiplier
local seventhPos = 280 * ResolutionMultiplier
local eigthPos = 39 * ResolutionMultiplier
local ninthPos = 105 * ResolutionMultiplier
local tenthPos = 190 * ResolutionMultiplier
local eleventhPos = 290 * ResolutionMultiplier

local CpuUsageHeaderSection = "${goto " .. firstPos .. "}"
		.. "${" .. Colors.blockHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockHeader,
			"${voffset -3}CPU USAGE")
		.. "${alignr}"
		.. "${" .. Colors.blockSubHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockSubHeader,
			"${execi 1000 cat /proc/cpuinfo | grep 'model name' | sed -e 's/model name.*: //'| sed -e 's/ CPU @ /@/' | sed -e 's/(R) /®/' | sed -e 's/(TM)/™/' | uniq | cut -c 1-23}     ")

local CpuUsageGraphSection = "${goto " .. secondPos .. "}"
		.. "${voffset -8}"
		.. "${" .. Colors.blockHeader .. "}"
		.. FontManager.applyComponentFont(Font.graphLegendLabel,
			"\\# 1 - ${execi 1000 cat /proc/cpuinfo | grep 'cpu cores' | sed -e 's/cpu cores.*: //'| uniq}")
		.. "${goto " .. thirdPos .. "}"
		.. "${voffset -10}"
		.. "${cpugraph " .. graphHeight .. "," .. graphWidth .. " " .. Colors.graphGradientStart .. " "
					.. Colors.graphGradientEnd .. " -l - t}"
		.. Separator.newLine
		.. "${goto " .. secondPos .. "}"
		.. "${voffset -25}"
		.. "${" .. Colors.blockSubHeader .. "}"
		.. FontManager.applyComponentFont(Font.graphLegendValue,
			"Avg. ${cpu cpu0}%")
		.. "${voffset -9}"

local CpuUsageInfoSection = "${goto " .. fourthPos .. "}"
		.. "${voffset 2}"
		.. "${" .. Colors.blockHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockDetailsLabel,
			"TEMP" .. "${goto " .. fifthPos .. "}CUR" .. "${goto " .. sixthPos .. "}MAX" .. "${goto " .. seventhPos .. "}TASKS")
		.. Separator.newLine
		.. "${goto " .. eigthPos .. "}"
		.. "${" .. Colors.blockSubHeader .. "}"
		.. FontManager.applyComponentFont(Font.blockDetailsValue,
			"${acpitemp}°C"
			.. "${goto " .. ninthPos .. "}${freq_g}GHz"
			.. "${goto " .. tenthPos .. "}${execi 1000 cat /proc/cpuinfo | grep 'model name' | sed -e 's/model name.*: //'| uniq | cut -c 34-40}"
			.. "${goto " .. eleventhPos .. "}${processes}")

CpuUsageInfo = table.concat({
			CpuUsageHeaderSection,
			CpuUsageGraphSection,
			CpuUsageInfoSection
		}, Separator.systemPanelGraphDivider)

