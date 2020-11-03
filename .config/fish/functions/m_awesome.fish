# Defined in - @ line 1
function m_awesome --wraps='cd && rm .xinitrc && echo exec awesome >> .xinitrc && startx' --description 'alias m_awesome=cd && rm .xinitrc && echo exec awesome >> .xinitrc && startx'
  cd && rm .xinitrc && echo exec awesome >> .xinitrc && startx $argv;
end
