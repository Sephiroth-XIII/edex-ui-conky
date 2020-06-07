home = os.getenv("HOME")
dofile(home .. '/dotfiles/conky/configs/themes/Tron.lua')
dofile(home .. '/dotfiles/conky/configs/themes/Westworld.lua')

Theme = {}
Theme.selectedTheme = Tron
-- Theme.selectedTheme = Westworld 

