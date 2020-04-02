function uninstall --wraps='sudo apt remove'
	if sudo apt remove $argv
		sudo apt autoremove $argv
		for arg in $argv
			sed -i "/^$arg\$/d" $installed_packages_file
		end
	end
end
