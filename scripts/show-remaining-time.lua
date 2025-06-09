mp.add_key_binding("i", "show-remaining-time", function()
    local duration = mp.get_property_number("duration", 0)
    local time_pos = mp.get_property_number("time-pos", 0)
    local remaining = duration - time_pos

    if remaining > 0 then
        local hrs = math.floor(remaining / 3600)
        local mins = math.floor((remaining % 3600) / 60)
        local secs = math.floor(remaining % 60)
        local formatted
        if hrs > 0 then
            formatted = string.format("Remaining: %d:%02d:%02d", hrs, mins, secs)
        else
            formatted = string.format("Remaining: %d:%02d", mins, secs)
        end
        mp.osd_message(formatted, 2)
    else
        mp.osd_message("Unknown remaining time", 2)
    end
end)

