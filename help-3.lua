--[[

لوضع للغه عربيه 
arabic
وراها
ar

لوضع اللغه انكليزية 

english
وراها

en

@iq_plus 

]]


 do 

local function run(msg, matches) 
  if matches[1] == "arabic" then
     local iraq = 'mate:'..msg.to.id
     redis:set(iraq, true)
     return "لغتك هيه الان العربية"
  end

  if matches[1] == "english" then 
     local usa = 'm:'..msg.to.id
     redis:set(usa, true)
     return "your lang now is english"
  end
  if matches[1] == "ar" then
     local usa = 'm:'..msg.to.id
     redis:del(usa)
     return "تم حذف اللغه الانكليزيه"
  end
  if matches[1] == "en" then
      local iraq = 'mate:'..msg.to.id
      redis:del(iraq)
      return "done delete lang arabic"
  end
end 

return { 
  patterns = { 
     "(.*)"
  }, 
  run = run, 
} 

end