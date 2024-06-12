local history_list = get("history")
local history = __bussinga.get_history()

print(history)

local history_map = history_list.map(function(item)
    return "<div><a href=\"" .. item.url "\"><p>" .. item.title .. "</p><p>" .. item.url .. "</p><p>" .. item.date .. "</p></a></div>"
end)

history_list.set_content(history_map)