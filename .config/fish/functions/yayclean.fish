# Defined in - @ line 1
function yayclean --wraps='yay -Rs (pacman -Qqdt)' --description 'alias yayclean=yay -Rs (pacman -Qqdt)'
  yay -Rs (pacman -Qqdt) $argv;
end
