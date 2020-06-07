home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

TopProcesses = {}

local firstPos = 25 * ResolutionMultiplier
local secondPos = 85 * ResolutionMultiplier
local thirdPos = 225 * ResolutionMultiplier
local forthPos = 285 * ResolutionMultiplier

local topProcessesHeader = "${goto " .. firstPos .. "}"
			.. "${" .. Colors.blockHeader .. "}"
			.. FontManager.applyComponentFont(Font.blockHeader,
				"${voffset -3}" .. "TOP PROCESSES")
			.. "${alignr}"
			.. "${" .. Colors.blockSubHeader .. "}"
			.. FontManager.applyComponentFont(Font.blockSubHeader,
				"PID | NAME | CPU | MEM     ")

function TopProcesses.renderTopNProcesses(n)
	local topNProcesses = {}
	table.insert(topNProcesses, topProcessesHeader)
	for i=1,n do
		table.insert(topNProcesses, "${goto " .. firstPos .. "}"
			.. "${" .. Colors.blockHeader .. "}"
			.. FontManager.applyComponentFont(Font.tableCellSecondary,
				(i == 1 and "${voffset 5}" or "${voffset 0}") .. "${top pid " .. i .. "}")
			.. "${goto " .. secondPos .. "}"
			.. "${" .. Colors.blockHeader .. "}"
			.. FontManager.applyComponentFont(Font.tableCellPrimary,
				"${voffset -2}" .. "${top name " .. i .. "}")
			.. "${goto " .. thirdPos .. "}"
			.. "${" .. Colors.blockHeader .. "}"
			.. FontManager.applyComponentFont(Font.tableCellSecondary,
				"${voffset -2}" .. "${top cpu " .. i .. "}%")
			.. "${goto " .. forthPos .. "}"
			.. "${" .. Colors.blockHeader .. "}"
			.. FontManager.applyComponentFont(Font.tableCellSecondary,
				"${voffset -2}" .. "${top mem " .. i .. "}%"))
	end
	return table.concat(topNProcesses, Separator.newLine)
end

