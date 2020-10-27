mydotfiles
=========
A backup for my working environment

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
  
 

