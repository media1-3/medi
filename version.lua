do 

local function oscar(msg, matches) 
  return [[
source created by @iq_plus 🕵
channel bot 🔘 @oscarbotv2 🔘
〰〰〰〰〰〰〰〰〰〰〰〰
  .            🔵 oscarbot v1 🔴


Oscar ™
Dev @iq_plus ⚜
Dev @JALAL_ALDON 🔱
Dev @CutlassX 🔱
Dev @mgoody_96 🔱
Dev @XxToFexX 🔱
Dev @iDev1 🔱

]]



end 

return { 
  patterns = { 
       "^[!/#](version)$", 
  }, 
  run = oscar, 
} 

end