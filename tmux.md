# Tmux cheatsheet and notes

**Current bind key is ctrl-a**  

## Sessions
  - s List sessions  
  - :new - create new session from within tmux
  - $ rename session
  - tmux new -s <name> - create new tmux session

## Windows
  - c Create window  
  - , Rename window  
  - n Next window  
  - p Previous window  
  - & Kill window  

## Panes
  - | - Split pane vertically or horizontally
  - ! Move current pane to a new window (break-pane)  
  - ctrl-<h, j, k, l> Move pane focus left, down, up, right
  - x Kill pane
  - Z (maximizes current pane) 
  - resize-pane -D -U -L -R <# of cells>
  - <space> - make panes equal size

## Other stuff:

  - r Reload .tmux.conf  
  - [ Scroll mode
  - q Quit scroll mode

Mounting SMB drive:
```
  mkdir /smb/[dir-name]    
  mount -t smbfs //[username]:@myserver/[path] /smb/[dir-name]    
```
