
##### Note : My dotfiles have been migrated [here](https://github.com/Nova-Striker/dotfiles) which is basically my home directory , so it would not require me to copy and paste the files again and again to this repository everytime I change something.

Misc files
=========

Big changes made on 24 October 2020 
--------
1. Moved from bash to zsh.
2. Moved from default gnome terminal to Alacritty.
3. Installed [Beekeeper Studio](https://github.com/beekeeper-studio/beekeeper-studio)

#### Side changes :
  1. Installed [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
  2. Installed [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and [fish like autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) for zsh
  3. For Reference see [Luke Smith's video](https://www.youtube.com/watch?v=eLEo4OQ-cuQ&t=486s) and his [.zshrc](https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52)
  
  Mysql related changes
  ------
  
  4. Changed the default `auth_socket` passwd identification to `caching_sha2_password` to make it compatible to use with beekeeper studio. See [this](https://github.com/beekeeper-studio/beekeeper-studio/issues/405#issue-728431491)
  
  5. Step 4 broke mysql server and now it cannot be used from shell. 
  It can now be used with only Beekeeper. Looking for a solution to fix this for the time being. 
  
  6. MySql is now fixed. Had to completely remove Mysql(not just removing it using apt but "purging" the entire mysql server.)
 

=======
#### Changes on 26 oct :
   1. Installed [Ranger](https://github.com/ranger/ranger) and planning to shift from vifm
   2. Installed a [neovim plugin](https://github.com/iamcco/markdown-preview.nvim) that allows to see live updates to a markdown file.
   
   
   ![Alt Text](https://media.giphy.com/media/JbpMvUgzz7bVOUs3W1/giphy.gif)
   
======= 
#### Changes on 3rd and 4th November 

  1. Moved from default `mutter` wm of gnome to [`bspwm`](https://github.com/baskerville/bspwm) 
  2. See installation for Ubuntu 20.04 [here](https://github.com/Nova-Striker/mydotfiles/blob/main/misc/bspwminstall.md)
  3. Some extra stuff : [Picom compositor](https://github.com/yshui/picom) , [polybar](https://github.com/polybar/polybar) , [Nitrogen](https://github.com/l3ib/nitrogen) and a few others 
  4. [powerlevel10k](https://github.com/romkatv/powerlevel10k) with right side prompt really mess up the terminal when resizing. See [this](https://github.com/romkatv/powerlevel10k/issues/175) . Reconfigured `.p10k.zsh` on this [commit](https://github.com/Nova-Striker/mydotfiles/commit/2a0076f82d7f3e8cab4bb000fe979dcf55231618#diff-7ef794e6ff0d5efd2e47e1a33e94acd7d14510a028661533af4650647d3ea879)

  

