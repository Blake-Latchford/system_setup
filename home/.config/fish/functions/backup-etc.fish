function backup-etc
    pushd $system_setup_directory
        dpkg --get-selections > $system_setup_directory/selections.list
        cp -vr /etc/apt/sources.list* etc/apt
        cp -v /etc/default/grub etc/default/grub

        git commit -m "Backup system settings" selections.list etc/
    popd
end
