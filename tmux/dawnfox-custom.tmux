#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/dawnfox.tmux
set -g mode-style "fg=#fcfcfd,bg=#5b6ccb"
set -g message-style "fg=#fcfcfd,bg=#5b6ccb"
set -g message-command-style "fg=#fcfcfd,bg=#5b6ccb"
set -g pane-border-style "fg=#5b6ccb"
set -g pane-active-border-style "fg=#1852c5"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#5b6ccb,bg=#fcfcfd"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#fcfcfd,bg=#1852c5,bold] #S #[fg=#1852c5,bg=#fcfcfd,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#fcfcfd,bg=#fcfcfd,nobold,nounderscore,noitalics]#[fg=#1852c5,bg=#fcfcfd] #{prefix_highlight} #[fg=#5b6ccb,bg=#fcfcfd,nobold,nounderscore,noitalics]#[fg=#fcfcfd,bg=#5b6ccb] %Y-%m-%d  %I:%M %p #[fg=#1852c5,bg=#5b6ccb,nobold,nounderscore,noitalics]#[fg=#fcfcfd,bg=#1852c5,bold] #h "
setw -g window-status-activity-style "underscore,fg=#acb0bf,bg=#fcfcfd"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#acb0bf,bg=#fcfcfd"
setw -g window-status-format "#[fg=#fcfcfd,bg=#fcfcfd,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#fcfcfd,bg=#fcfcfd,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#fcfcfd,bg=#5b6ccb,nobold,nounderscore,noitalics]#[fg=#fcfcfd,bg=#5b6ccb,bold] #I  #W #F #[fg=#5b6ccb,bg=#fcfcfd,nobold,nounderscore,noitalics]"
