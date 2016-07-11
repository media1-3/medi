do

function run (msg, matches)

local reply_id = msg ['id']
if matches[1]==  'dev' and is_momod(msg) then
local omar = [[🔋 ⚡️ DEVOMAR ⚡️ 🔋

📌🔶➖🔶➖🔷➖🔶➖🔷📌

📫 /sban : باند عام 
📪 /newgroup ::   انشاء مجموغعة
📪 /RealBot ::  تفعيل المجموعة 
📪 /uRealBot ::  الغاء تفعيل المجموعة 
📪 /unsban ::  الغاء العام 

📌🔶➖🔶➖🔷➖🔶➖🔷📌

Made By 🔹@Omar_Real]]
reply_msg(reply_id, omar, ok_cb, false)
end
end 
return {
patterns = {
"^[!/#](dev)$",
},
run = run
}

end
