#!/bin/bash
# from https://gist.github.com/arleighdickerson/6a3a7cc1c15cbce19787beeb766df6f0#file-set-macvim-as-default-editor-sh-L1

#  1) Set New Defaults
#  ========================================
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add \
'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=org.vim.MacVim;}'

#  2) Profit
#  ========================================
#  $$$ acquire currency $$$
#
