Development Environment
=======================

## Sample Screenshot

![alt text](https://raw.github.com/pokoot/workflow/master/screenshot.png "Vim Editor")


## Install .gitconfig

    cd ~ && mv ~/.gitconfig ~/.gitconfig.backup
    curl -Sso ~/.gitconfig https://raw.github.com/pokoot/workflow/master/.gitconfig



## Install .bash_aliases

    rm -f .bash_aliases && curl -Sso ~/.bash_aliases https://raw.github.com/pokoot/workflow/master/.bash_aliases


## Install .dircolors

    rm -f .dircolors && curl -Sso ~/.dircolors https://raw.github.com/pokoot/workflow/master/.dircolors





More Info
=========

Changing of colors has never been easy with this color palettes.

## Foreground Color

For using one of the 256 colors on the foreground (text color), the control sequence is ”<Esc>[38;5;ColorNumberm” where ColorNumber is one of the following colors:

![alt text](https://raw.github.com/pokoot/workflow/master/256_colors_fg.png "Forground Color")


## Background Color

For using one of the 256 colors on the background, the control sequence is ”<Esc>[48;5;ColorNumberm” where ColorNumber is one of the following colors:

![alt text](https://raw.github.com/pokoot/workflow/master/256_colors_bg.png "Forground Color")
