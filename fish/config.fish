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
