function install --wraps='sudo apt install'
	if sudo apt install $argv
		echo -e $argv"\n" >> $installed_packages_file
		sort $installed_packages_file -u -o $installed_packages_file
	end
end
