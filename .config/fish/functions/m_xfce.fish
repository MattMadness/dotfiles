# Defined in - @ line 1
function m_xfce --wraps='cd && rm .xinitrc && echo exec startxfce4 >> .xinitrc && startx' --description 'alias m_xfce=cd && rm .xinitrc && echo exec startxfce4 >> .xinitrc && startx'
  cd && rm .xinitrc && echo exec startxfce4 >> .xinitrc && startx $argv;
end
