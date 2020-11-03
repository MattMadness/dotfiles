# Defined in - @ line 1
function myip --wraps='curl ipv4.icanhazip.com' --description 'alias myip=curl ipv4.icanhazip.com'
  curl ipv4.icanhazip.com $argv;
end
