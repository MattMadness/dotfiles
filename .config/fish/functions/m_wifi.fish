# Defined in - @ line 1
function m_wifi --wraps='echo Restarting wireless interface... && sudo ifconfig wlp12s0 down && sudo ifconfig wlp12s0 up && echo Waiting 10 seconds for network to restart... && sleep 10 && echo All set!' --description 'alias m_wifi=echo Restarting wireless interface... && sudo ifconfig wlp12s0 down && sudo ifconfig wlp12s0 up && echo Waiting 10 seconds for network to restart... && sleep 10 && echo All set!'
  echo Restarting wireless interface... && sudo ifconfig wlp12s0 down && sudo ifconfig wlp12s0 up && echo Waiting 10 seconds for network to restart... && sleep 10 && echo All set! $argv;
end
