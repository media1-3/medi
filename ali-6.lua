--[[

 اذا كاتب اللغه عربيه استخدم اوامر تاليه لوضع المساعده 


ضع مساعدة <مساعدة> -- للوضع مساعدة
حذف -- لحذف المساعدة
مساعدة -- لعرض المساعدة

اذا كانت اللغه انكليزيه

 
sethelp <help> -- لوضع المساعدة
cleanhelp -- لحذف المساعدة
help -- لعرض المساعدة

@iq_plus

]]

do 

local function run(msg, matches) 
 local iraq = 'mate:'..msg.to.id 
 local usa = 'm:'..msg.to.id 
 local r = get_receiver(msg) 
 local oscar = matches[2] 
  if redis:get(iraq) and matches[1] == "ضع مساعدة" then 
     local help = 'mate:'..msg.to.id 
     redis:set(help, oscar) 
     return "تم وضع المساعدة" 
end 
  if redis:get(usa) and matches[1] == "sethelp" then 
     local hel = 'mate:'..msg.to.id 
     redis:set(hel, oscar) 
     return "done set help" 
end 

  if redis:get(iraq) and matches[1] == "حذف" then 
     local help = 'mate:'..msg.to.id 
     redis:del(help) 
     return "تم حذف المساعدة" 
end 

  if redis:get(usa) and matches[1] == "cleanhelp" then 
     local hel = 'mate:'..msg.to.id 
     redis:del(hel) 
     return "done,clean help" 
end 

  if redis:get(usa) and matches[1] == "help" then 
     local hel = 'mate:'..msg.to.id 
     send_large_msg(r, redis:get(hel)) 
  end 

  if redis:get(iraq) and matches[1] == "مساعدة" then 
     local help = 'mate:'..msg.to.id 
     send_large_msg(r, redis:get(help)) 

end 

  local help = 'mate:'..msg.to.id 
  if not redis:get(help) and redis:get(iraq) and matches[1] == "مساعدة" then 
     return "قم بوضع المساعدة اولا" 
end 
  local hel = 'mate:'..msg.to.id 
  if not redis:get(hel) and redis:get(usa) and matches[1] == "help" then 
     return "set help first " 
end 

end 

return { 
  patterns = { 
     "^[!/#](ضع مساعدة) (.*)$", 
     "^[!/#](sethelp) (.*)$", 
     "^[!/#](حذف)$", 
     "^[!/#](cleanhelp)$", 
     "^[!/#](help)", 
     "^[!/#](مساعدة)$" 
  }, 
  run = run, 
} 

end 
--[[

oscarteam


]]


