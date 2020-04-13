function install --wraps='sudo apt install'
    sudo apt update
	sudo apt install $argv
end
