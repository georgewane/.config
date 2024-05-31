if status is-interactive
    # Commands to run in interactive sessions can go here
end

bind --erase \ct
# removes the mapping <C-t> which is being used to close the terminal in NeoVim

if type -q zoxide
zoxide init fish --cmd cd | source
# removes the mapping <C-t> which is being used to close the terminal in NeoVim
end

if type -q neofetch
neofetch
# runs neofetch if installed
end

# Added this because brew asked me to 
# fish_add_path /usr/local/sbin

# for inkscape
set -gx PATH /Library/Frameworks/Python.framework/Versions/3.12/bin $PATH
set -gx PATH /Applications/Inkscape.app/Contents/MacOS $PATH

# This is for updated installing for nvim in macos so that it recognises the path of brew
eval "$(/usr/local/bin/brew shellenv)"
set -gx HOMEBREW_PREFIX "/usr/local";
set -gx HOMEBREW_CELLAR "/usr/local/Cellar";
set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew";
fish_add_path -gP "/usr/local/bin" "/usr/local/sbin";
! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "/usr/local/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "/usr/local/share/info" $INFOPATH;
set -gx HOMEBREW_PREFIX "/usr/local";
set -gx HOMEBREW_CELLAR "/usr/local/Cellar";
set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew";
fish_add_path -gP "/usr/local/bin" "/usr/local/sbin";
! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "/usr/local/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "/usr/local/share/info" $INFOPATH;

# setting path for mathematica
set -gx PATH /Applications/Mathematica.app/Contents/MacOS $PATH
