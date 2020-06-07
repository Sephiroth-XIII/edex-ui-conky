home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Utils.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')

Westworld = {}

Westworld.availableFonts = {
	CORE_SANS_D_47_CN_MEDIUM  = "CoreSansD47CnMediumW01\\-Rg",
	DINCondRegular            = "DINCond\\-Regular",
}

Westworld.colorPalette = {
	color1 = '0e0c0e', -- dark primary
	color2 = '616061', -- light primary
	color3 = 'e12732', -- bright seconday
	color4 = '9f0112'  -- dull secondary
}

Westworld.fontPalette = {
	blockDetailsLabel   = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 12 * ResolutionMultiplier),
	blockDetailsValue   = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 12 * ResolutionMultiplier),
	blockHeader         = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 15 * ResolutionMultiplier),
	blockHeaderAlt      = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 15 * ResolutionMultiplier),
	blockSubHeader      = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 11 * ResolutionMultiplier),
	blockSubHeaderLabel = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 13 * ResolutionMultiplier),
	blockSubHeaderValue = Utils.makeFont(Westworld.availableFonts.DINCondRegular, 13 * ResolutionMultiplier),
	clock               = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 35 * ResolutionMultiplier),
	graphLegendLabel    = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 10 * ResolutionMultiplier),
	graphLegendValue    = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 10 * ResolutionMultiplier),
	graphSeparator      = Utils.makeFont(Westworld.availableFonts.DINCondRegular, 15 * ResolutionMultiplier),
	newLine             = Utils.makeFont(Westworld.availableFonts.DINCondRegular, 12 * ResolutionMultiplier),
	panelHeader         = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 10 * ResolutionMultiplier),
	separator           = Utils.makeFont(Westworld.availableFonts.DINCondRegular, 8 * ResolutionMultiplier),
	tableCellPrimary    = Utils.makeFont(Westworld.availableFonts.CORE_SANS_D_47_CN_MEDIUM, 12 * ResolutionMultiplier),
	tableCellSecondary  = Utils.makeFont(Westworld.availableFonts.DINCondRegular, 12 * ResolutionMultiplier)
}

