# Defined in - @ line 1
function mkdir --wraps='mkdir -pv' --description 'alias mkdir=mkdir -pv'
 command mkdir -pv $argv;
end
