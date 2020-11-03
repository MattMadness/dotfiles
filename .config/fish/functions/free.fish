# Defined in - @ line 1
function free --wraps='free -mt' --description 'alias free=free -mt'
 command free -mt $argv;
end
