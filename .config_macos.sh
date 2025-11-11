#!/bin/bash

defaults write com.apple.dock autohide -bool true                           # autohide dock
defaults write com.apple.dock magnification -bool true;                     # dock hover magnification
defaults write com.apple.dock tilesize -int 44;                             # dock normal icon size
defaults write com.apple.dock largesize -int 104;                           # dock magnified icon size
defaults write com.apple.dock autohide-delay -int 0;                        # delay to show dock
defaults write com.apple.dock autohide-time-modifier -float 0.5;            # duration dock animation
defaults write com.apple.dock showhidden -bool true;                        # traslucid hidden apps (cmd+H)
defaults write com.apple.dock show-recents -bool true;                      # show recents
defaults write com.apple.dock show-recent-count -int 1;                     # number of recents to show
defaults write com.apple.dock orientation -string left;                     # move the dock to the left
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -int 0   # do not insert dot after double space

killall Dock                                                                #restart dock
