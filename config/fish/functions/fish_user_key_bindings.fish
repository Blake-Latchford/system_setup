function fish_user_key_bindings
	bind --erase --all nextd-or-forward-word
	bind --erase --all prevd-or-backward-word
	bind --erase --all forward-word
	bind --erase --all backward-word
	bind --erase --all pager-toggle-search
	bind --erase --all transpose-chars
	bind --erase --all transpose-words
	bind --erase --all backward-kill-line
	#bind --erase --all kill-line

	bind \cH backward-kill-word
	bind \cS __fish_prepend_sudo
	bind \e\[1\;5C nextd-or-forward-word
	# bind \e\[1\;5D prevd-or-backward-word
	bind \cK prevd-or-backward-word
	bind \cU backward-kill-line
end

