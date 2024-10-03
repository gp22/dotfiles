#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/dawnfox.tmux
set -g mode-style "fg=#fdf6e3,bg=#6c71c4"
set -g message-style "fg=#fdf6e3,bg=#859900"
set -g message-command-style "fg=#fdf6e3,bg=#859900"
set -g pane-border-style "fg=#6c71c4"
set -g pane-active-border-style "fg=#268bd2"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#859900,bg=#fdf6e3"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#fdf6e3,bg=#268bd2,bold] #S #[fg=#268bd2,bg=#fdf6e3,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#fdf6e3,bg=#fdf6e3,nobold,nounderscore,noitalics]#[fg=#268bd2,bg=#fdf6e3] #{prefix_highlight} #[fg=#859900,bg=#fdf6e3,nobold,nounderscore,noitalics]#[fg=#fdf6e3,bg=#6c71c4] %Y-%m-%d  %I:%M %p #[fg=#268bd2,bg=#859900,nobold,nounderscore,noitalics]#[fg=#fdf6e3,bg=#268bd2,bold] #h "
setw -g window-status-activity-style "underscore,fg=#93a1a1,bg=#fdf6e3"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#93a1a1,bg=#fdf6e3"
setw -g window-status-format "#[fg=#fdf6e3,bg=#fdf6e3,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#fdf6e3,bg=#fdf6e3,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#fdf6e3,bg=#859900,nobold,nounderscore,noitalics]#[fg=#fdf6e3,bg=#859900,bold] #I  #W #F #[fg=#6c71c4,bg=#fdf6e3,nobold,nounderscore,noitalics]"
