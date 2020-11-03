# Defined in - @ line 1
function m_dwm --wraps='cd && rm .xinitrc && echo exec dwm >> .xinitrc && startx' --description 'alias m_dwm=cd && rm .xinitrc && echo exec dwm >> .xinitrc && startx'
  cd && rm .xinitrc && echo exec dwm >> .xinitrc && startx $argv;
end
