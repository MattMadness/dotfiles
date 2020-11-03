# Defined in - @ line 1
function m_firefox --wraps='firefox &' --description 'alias m_firefox=firefox &'
  firefox & $argv;
end
