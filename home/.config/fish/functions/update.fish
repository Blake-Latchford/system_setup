# Defined in - @ line 1
function update --wraps='sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt autoremove' --description 'alias update=sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt autoremove'
  sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt autoremove $argv;
end
