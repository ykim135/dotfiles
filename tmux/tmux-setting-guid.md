## TMUX copy and paste on OS X buffer:

1. Install the following:
This guide is from this [blog post](https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future)

```bash
brew install reattach-to-user-namespace
``` 

2. Then add the following statements to tmux conf file:

```tmux
# Use vim keybindings in copy mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter

# below does not work
#bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"
```

