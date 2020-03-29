# Defined in - @ line 1
function install --wraps='sudo apt install' --description 'alias install=sudo apt install'
  sudo apt install $argv;
end
