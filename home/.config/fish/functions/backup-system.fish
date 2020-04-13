function backup-system
    pushd $system_setup_directory
        dpkg --get-selections > $system_setup_directory/selections.list
        cp -vr /etc/apt/sources.list* etc/apt
        cp -v /etc/default/grub etc/default/grub

        git commit selections.list etc/
    popd
end
