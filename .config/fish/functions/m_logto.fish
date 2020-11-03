# Defined in - @ line 1
function m_logto --wraps='sudo dmesg -w > ' --description 'alias m_logto=sudo dmesg -w > '
  sudo dmesg -w >  $argv;
end
