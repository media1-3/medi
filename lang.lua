do
local function run(msg, matches)
    if not is_sudo(msg) then
        return
    end
    local chat = msg.to.id
    local hash = 'ar:enable'..chat
    if matches[1] == 'ar' then
        redis:set(hash, true)
        return 'تم اختيار اللغة العربية في المجموعة'
        end
    if matches[1] == 'en' then
        redis:del(hash)
        return 'Group lang has been changed to english'
    end 
end

return {
    patterns = {
        '^set lang (ar)$',
        '^set lang (en)$'
        },
    run = run,
}
end