function remove --wraps='sudo apt remove'
	sudo apt autoremove $argv
end
