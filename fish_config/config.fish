fish_vi_key_bindings
set -x PATH ~/anaconda3/bin export ~/.ebcli-virtual-env/executables $PATH
source ~/anaconda3/etc/fish/conf.d/conda.fish

set -g theme_newline_cursor yes
set -g theme_date_format "+%h %d %Y %I:%M %p"
set -Ux ROCKY_IP 192.168.56.106
set -Ux ATLAS_IP 173.255.102.194
set -Ux RUBRYCFS_IP 52.24.193.169
set -Ux PRETTY_HOSTNAME (hostname | cut -d . -f 1)
set -Ux MOUNT_DIR ~/Mounts
#set -Ux EC2_MOUNT_PATH {$MOUNT_DIR}/EC2

###These ENVS were determed in setup.fish
function check_paths
    if test -d $jordan_configuration_path
        true
    else
        echo "Warning!! -" $_tool_repo " does not exists"
    end

    if test -d $computational_tools_repository
        #set -Ux CURRENT_AWS (python $computational_tools_repository/fetch_jordan_awsdns.py | tail -n 1 | cut -f 1)
        true
    else
        echo "Warning!! -" $computational_tools_repository " does not exists"
    end
end

check_paths
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



set_color 5fdfff
echo "~~~Live long and prosper~~~"
