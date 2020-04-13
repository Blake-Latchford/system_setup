function backup-home-configs
    pushd $system_setup_directory
        git add -A home
        git commit -m "Backup configurations in home."
    popd    
end
