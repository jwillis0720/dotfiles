##VI Mode for fish
fish_vi_key_bindings

##
set -x PATH ~/anaconda3/bin /usr/local/bin $PATH

##This helps conda with enviroments in fish
source ~/anaconda3/etc/fish/conf.d/conda.fish

set -g theme_newline_cursor yes
set -g theme_date_format "+%h %d %Y %I:%M %p"

##Enviromental variables
set -Ux PRETTY_HOSTNAME (hostname | cut -d . -f 1)
set -Ux MOUNT_DIR ~/Mounts


echo "~Your custom Functions on $PRETTY_HOSTNAME"
for func in (ls ~/.config/fish/functions/* | sort)
    echo "  " (basename $func | cut -d . -f 1)
end


function omf_setup
    if type -q omf
    else
        echo "Warning!!- Oh-my-fish:Bobthefish installation not detected"
    end
end

omf_setup

##get updated glyphs
set -g theme_nerd_fonts yes
set -g theme_date_timezone America/Los_Angeles
set -g theme_title_use_abbreviated_path no
set -g theme_display_hostname ssh
set -g fish_prompt_pwd_dir_length 0 

echo "~~~Live long and prosper~~~"
