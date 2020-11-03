# Defined in - @ line 1
function histg --wraps='history | grep' --description 'alias histg=history | grep'
  history | grep $argv;
end
