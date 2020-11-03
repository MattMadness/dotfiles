# Defined in - @ line 1
function m_bedtime --wraps='sudo pacman -Syu --noconfirm && yay -Sayu --answerclean n --answerdiff n --answeredit n --answerupgrade y --removemake --cleanafter && shutdown now' --description 'alias m_bedtime=sudo pacman -Syu --noconfirm && yay -Sayu --answerclean n --answerdiff n --answeredit n --answerupgrade y --removemake --cleanafter && shutdown now'
  sudo pacman -Syu --noconfirm && yay -Sayu --answerclean n --answerdiff n --answeredit n --answerupgrade y --removemake --cleanafter && shutdown now $argv;
end
