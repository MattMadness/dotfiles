# Defined in - @ line 1
function yayclean --wraps='pikaur -Rs (pacman -Qqdt)' --description 'alias yayclean=pikaur -Rs (pacman -Qqdt)'
  pikaur -Rs (pacman -Qqdt) $argv;
end
