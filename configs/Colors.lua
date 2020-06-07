home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/Theme.lua')

Colors = {}

Colors.selectedColorPalette = Theme.selectedTheme.colorPalette

Colors.panelHeaderText    = 'color1'
Colors.separator          = 'color2'
Colors.blockHeader        = 'color1'
Colors.blockSubHeader     = 'color2'
Colors.graphGradientStart = Colors.selectedColorPalette.color1 -- graphs use hex codes
Colors.graphGradientEnd   = Colors.selectedColorPalette.color3 -- graphs use hex codes

Colors.blockSubHeaderAlt     = 'color3'
Colors.netGraphGradientStart = Colors.selectedColorPalette.color2 -- graphs use hex codes
Colors.netGraphGradientEnd   = Colors.selectedColorPalette.color1 -- graphs use hex codes
Colors.netGraphGradientStartAlt = Colors.selectedColorPalette.color4 -- graphs use hex codes
Colors.netGraphGradientEndAlt   = Colors.selectedColorPalette.color3 -- graphs use hex codes

