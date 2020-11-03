# Defined in - @ line 1
function psgrep --wraps='ps aux | grep -v grep | grep -i -e VSZ -e' --description 'alias psgrep=ps aux | grep -v grep | grep -i -e VSZ -e'
  ps aux | grep -v grep | grep -i -e VSZ -e $argv;
end
