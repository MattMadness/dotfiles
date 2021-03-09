# Defined in - @ line 1
function starttor --wraps='sudo systemctl start tor' --description 'alias starttor sudo systemctl start tor'
  sudo systemctl start tor $argv;
end
