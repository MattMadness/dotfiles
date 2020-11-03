# Defined in - @ line 1
function lsm --wraps='lsd -a' --description 'alias lsm=lsd -a'
  lsd -a $argv;
end
