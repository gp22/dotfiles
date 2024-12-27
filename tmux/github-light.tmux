#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/dawnfox.tmux
set -g mode-style "fg=#ffffff,bg=#0969da"
set -g message-style "fg=#ffffff,bg=#0969da"
set -g message-command-style "fg=#ffffff,bg=#0969da"
set -g pane-border-style "fg=#0969da"
set -g pane-active-border-style "fg=#0969da"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#0969da,bg=#ffffff"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#ffffff,bg=#0969da,bold] #S #[fg=#0969da,bg=#ffffff,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#ffffff] #{prefix_highlight} #[fg=#0969da,bg=#ffffff,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#0969da] %Y-%m-%d  %I:%M %p #[fg=#0969da,bg=#0969da,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#0969da,bold] #h "
setw -g window-status-activity-style "underscore,fg=#0969da,bg=#ffffff"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#0969da,bg=#ffffff"
setw -g window-status-format "#[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#ffffff,bg=#0969da,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#0969da,bold] #I  #W #F #[fg=#0969da,bg=#ffffff,nobold,nounderscore,noitalics]"
