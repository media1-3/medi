do
local function unmute_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local name = msg.from.username
    local hash = 'muted:'..chat..':'..user
    redis:del(hash)
    if msg.to.type == 'chat' then
        send_msg('chat#id'..chat, 'ℹ️''(chat, 'userUnmuted:1')..' '..name..' ('..user..') '(chat, 'userUnmuted:2'), ok_cb,  true)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..chat, 'ℹ️ ''(chat, 'userUnmuted:1')..' '..name..' ('..user..') '(chat, 'userUnmuted:2'), ok_cb,  true)
    end
end

local function mute_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local name = msg.from.username
    local hash = 'muted:'..chat..':'..user
    redis:set(hash, true)
    if msg.to.type == 'chat' then
        send_msg('chat#id'..chat, 'ℹ️ '(chat, 'userMuted:1')..' '..name..' ('..user..') '(chat, 'userMuted:2'), ok_cb,  true)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..chat, 'ℹ️ '(chat, 'userMuted:1')..' '..name..' ('..user..') '(chat, 'userMuted:2'), ok_cb,  true)
    end
end
local function pre_process(msg)
    local hash = 'muted:'..msg.to.id..':'..msg.from.id
    if redis:get(hash) then
        if msg.to.type == 'chat' then
            delete_msg(msg.id, ok_cb, true)
        elseif msg.to.type == 'channel' then
            delete_msg(msg.id, ok_cb, true)
        end
end
matches[1] == 'mute' then
        if permissions(msg.from.id, msg.to.id, "mute") then
            if msg.reply_id then
                get_message(msg.reply_id, mute_by_reply, false)
                return
            end
            if matches[2] then
                if is_id(matches[2]) then
                    local hash = 'muted:'..msg.to.id..':'..matches[2]
                    redis:set(hash, true)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'ℹ️ '(chat_id, 'userMuted:1')..' '..matches[2]..' '..lang_text(chat_id, 'userMuted:2'), ok_cb, true)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'ℹ️ '(chat_id, 'userMuted:1')..' '..matches[2]..' '..lang_text(chat_id, 'userMuted:2'), ok_cb, true)
                    end
                    return
                else
                    local member = string.gsub(matches[2], '@', '')
                    local chat_id = msg.to.id
                    local chat_type = msg.to.type
                    resolve_username(member, mute_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
                    return
                end
            end
        else
            return .."has been 1"..
        end
        local function run(msg, matches)
        chat_id =  msg.to.id
        if is_admin and matches[1] == 'mute' then
        if permissions(msg.from.id, msg.to.id, "mute") then
            if msg.reply_id then
                get_message(msg.reply_id, mute_by_reply, false)
                return
            end
            if matches[2] then
                if is_id(matches[2]) then
                    local hash = 'muted:'..msg.to.id..':'..matches[2]
                    redis:set(hash, true)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'ℹ️ '(chat_id, 'userMuted:1')..' '..matches[2]..' '(chat_id, 'userMuted:2'), ok_cb, true)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'ℹ️ '(chat_id, 'userMuted:1')..' '..matches[2]..' '(chat_id, 'userMuted:2'), ok_cb, true)
                    end
                    return
                else
                    local member = string.gsub(matches[2], '@', '')
                    local chat_id = msg.to.id
                    local chat_type = msg.to.type
                    resolve_username(member, mute_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
                    return
                end
            end
        else
            return .."has been 1"..
        end
    elseif is_admin and matches[1] == 'unmute' then
        if permissions(msg.from.id, msg.to.id, "unmute") then
            if msg.reply_id then
                get_message(msg.reply_id, unmute_by_reply, false)
                return
            end
            if matches[2] then
                if is_id(matches[2]) then
                    local hash = 'muted:'..msg.to.id..':'..matches[2]
                    redis:del(hash)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'ℹ️ '(chat_id, 'userUnmuted:1')..' '..matches[2]..' '(chat_id, 'userUnmuted:2'), ok_cb, true)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'ℹ️ '(chat_id, 'userUnmuted:1')..' '..matches[2]..' '(chat_id, 'userUnmuted:2'), ok_cb, true)
                    end
                    return
                else
                    local member = string.gsub(matches[2], '@', '')
                    local chat_id = msg.to.id
                    local chat_type = msg.to.type
                    resolve_username(member, unmute_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
                    return
                end
            end
    else
        return .."has been 1"..
    end
end

    return {
    patterns = {
        '^[!/](mute) (.*)$',
        '^[!/](mute)$',
        '^[!/](unmute) (.*)$',
        '^[!/](unmute)$'
    },
    run = run,
    pre_process = pre_process
}