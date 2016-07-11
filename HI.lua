do 

local function DevPoint(msg, matches) 
local reply_id = msg ['id']
if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     local omar = " اهلا 😚🍁 "..msg.from.username..'\n\n انت الان 🔷 تتحدث مع بوت Real 🤖✔️ \n\n للتحدث مع المطور،🕵 \n\n 🔶 Dev @Omar_Real \n\n شعارنا 🇮🇶 هوة سعادتكم 🔕 وارضائنا في ارضائكم ♠️🔇 \n\n  القنواة الخاصة 🔕✔️\n\n📡 #CH @AXIS_BOTCENA\n📡 #CH @IQ_Dev8\n'
     reply_msg(reply_id, omar, ok_cb, false)
  end 
   
end 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = DevPoint, 
} 

end 
-- MAde By @Omar_Real
