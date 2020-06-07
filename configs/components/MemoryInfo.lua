home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Colors.lua')
dofile(home .. '/dotfiles/conky/configs/FontManager.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')
dofile(home .. '/dotfiles/conky/configs/components/Separator.lua')

local firstPos = 25 * ResolutionMultiplier
local secondPos = 20 * ResolutionMultiplier
local thirdPos = 70 * ResolutionMultiplier

local graphHeight = 70 * ResolutionMultiplier
local graphWidth = 310 * ResolutionMultiplier

local swapBarHeight = 6 * ResolutionMultiplier
local swapBarWidth = 195 * ResolutionMultiplier

MemoryHeader = "${goto " .. firstPos .. "}"
	.. "${voffset -3}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockHeader,
		"MEMORY")
	.. "${" .. Colors.blockSubHeader .. "}"
	.. "${alignr}"
	.. FontManager.applyComponentFont(Font.blockSubHeader,
		"USING ${mem} OUT OF ${memmax}     ")

MemoryGraph = "${goto " .. secondPos .. "}"
	.. "${memgraph " .. graphHeight .. "," .. graphWidth .. " "
		.. Colors.graphGradientStart
		.. " "
		.. Colors.graphGradientEnd
		.. " -l -t}"

MemorySwapInfo = "${goto " .. secondPos .. "}"
	.. "${" .. Colors.blockHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockDetailsLabel,
		"SWAP"
	.. "${goto " .. thirdPos .. "}"
	.. "${swapbar " .. swapBarHeight .. "," .. swapBarWidth .. "}")
	.. "  "
	.. "${voffset -2}"
	.. "${" .. Colors.blockSubHeader .. "}"
	.. FontManager.applyComponentFont(Font.blockDetailsValue,
		"${swap}")

MemoryInfo = table.concat({
		MemoryHeader,
		MemoryGraph,
		MemorySwapInfo
	}, Separator.newLine)

