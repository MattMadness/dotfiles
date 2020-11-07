# Defined in - @ line 1
function m_qtile --wraps='cd && rm .xinitrc && echo exec qtile >> .xinitrc && startx' --description 'alias m_qtile=cd && rm .xinitrc && echo exec qtile >> .xinitrc && startx'
  cd && rm .xinitrc && echo exec qtile >> .xinitrc && startx $argv;
end
