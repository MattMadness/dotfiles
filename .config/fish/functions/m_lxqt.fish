# Defined in - @ line 1
function m_lxqt --wraps='cd && rm .xinitrc && echo exec startlxqt >> .xinitrc && startx' --description 'alias m_lxqt=cd && rm .xinitrc && echo exec startlxqt >> .xinitrc && startx'
  cd && rm .xinitrc && echo exec startlxqt >> .xinitrc && startx $argv;
end
