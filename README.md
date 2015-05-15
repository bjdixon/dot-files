Dot Files
=========

*Contents*

* .vimrc
* .jshintrc
* .bashrc / .bash\_profile

.vimrc
------

Installation:

* cp -r .vim\* ~/
* Install Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* inside vim :PluginInstall

.jshintrc
---------

* cp .jshintrc ~/

.bash\*
------

*.bashrc* - I use this for debian

* cp .bashrc ~/
* cp .dircolors ~/
* cp Solarized\_Dark.colorscheme ~/.kde/share/apps/konsole/
* Open Konsole and select "Settings", then "Manage Profiles", then "Edit Profile", then "Appearance". Select the Solarized theme and click "Okay"
* source ~/.bashrc

*.bash_profile* - I use this for mac

* Install iterm2 https://www.iterm2.com
* cp Solarized-Dark.itermcolors ~/Documents/
* Open iTerm 2, open Preferences, click on the "Profiles" icon in the preferences toolbar, then select the "colors" tab. Click on the "load presets" and select "import...". Select the Solarized theme file in ~/Documents/.
* cp .bash\_profile ~/
* source ~/.bash\_profile
