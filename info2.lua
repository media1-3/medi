--[[
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY OmarRea;                       ▀▄ ▄▀ 
▀▄ ▄▀     BY OmarReal (Omar_Real7)         ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY OmarReal              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]


do
function run(msg, matches)
local reply_id = msg['id']

local info = ' - Name : '..msg.from.first_name..'\n'
..'◼️ - Id : '..msg.from.id..'\n'
..'◼️ - Username : @'..msg.from.username..'\n'
..'◼️ - Group ID : '..msg.to.id..'\n'
..'◼️ - Number of members : 5.k\n - Group Name : '..msg.to.title

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^/info"
},
run = run
}
--Coded By Omar Aliraqe >> @Omar_Real7
end
