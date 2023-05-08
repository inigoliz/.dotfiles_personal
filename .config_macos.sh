defaults write com.apple.dock magnification -bool true # magnification
defaults write com.apple.dock tilesize -int 50 # normal icon size
defaults write com.apple.dock largesize -int 90 # magnified icon size
defaults write com.apple.dock autohide-delay -int 0 # delay to show dock
defaults write com.apple.dock autohide-time-modifier -float 0.5 # duration dock animation
defaults write com.apple.dock showhidden -bool true # traslucid hidden apps (cmd+H)

defaults write -g com.apple.trackpad.scaling -float 2.5 #set trackpad speed. Needs restart

killall Dock #restart dock
