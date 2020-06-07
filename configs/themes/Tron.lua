home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Utils.lua')
dofile(home .. '/dotfiles/conky/configs/ResolutionMultiplier.lua')

Tron = {}

Tron.availableFonts = {
	UNITED_SANS_REGULAR_MD = "United Sans Rg Md:medium",
	UNITED_SANS_REGULAR_LT = "United Sans Rg Lt:light"
}

Tron.colorPalette = {
	color1 = 'aacfd1', -- bright primary
	color2 = '394547', -- dull primary
	color3 = 'ffe64d', -- bright secondary
	color4 = 'd4740c'  -- dull secondary
}

Tron.fontPalette = {
	blockDetailsLabel   = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 12 * ResolutionMultiplier),
	blockDetailsValue   = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 12 * ResolutionMultiplier),
	blockHeader         = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 15 * ResolutionMultiplier),
	blockHeaderAlt      = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 15 * ResolutionMultiplier),
	blockSubHeader      = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 11 * ResolutionMultiplier),
	blockSubHeaderLabel = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 13 * ResolutionMultiplier),
	blockSubHeaderValue = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_LT, 13 * ResolutionMultiplier),
	clock               = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 35 * ResolutionMultiplier),
	graphLegendLabel    = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 10 * ResolutionMultiplier),
	graphLegendValue    = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 10 * ResolutionMultiplier),
	graphSeparator      = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_LT, 15 * ResolutionMultiplier),
	newLine             = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_LT, 10 * ResolutionMultiplier),
	panelHeader         = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 10 * ResolutionMultiplier),
	separator           = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_LT, 10 * ResolutionMultiplier),
	tableCellPrimary    = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_MD, 12 * ResolutionMultiplier),
	tableCellSecondary  = Utils.makeFont(Tron.availableFonts.UNITED_SANS_REGULAR_LT, 12 * ResolutionMultiplier)
}

