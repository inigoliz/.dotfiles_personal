defaults write -g com.apple.trackpad.scaling 2 #set trackpad speed
defaults write com.apple.dock autohide-delay -float 0 #delay to show dock
defaults write com.apple.dock autohide-time-modifier -float 0.5 #duration dock animation
defaults write com.apple.dock showhidden -bool true #traslucid hidden apps (cmd+H)
killall Dock #restart dock
