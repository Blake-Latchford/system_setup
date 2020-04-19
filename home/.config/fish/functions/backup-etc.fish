function backup-etc
    pushd $system_setup_directory
        cp -vr /etc/apt/sources.list* etc/apt
        cp -v /etc/default/grub etc/default/grub

        git commit -m "Backup system settings" selections.list etc/
    popd
end
