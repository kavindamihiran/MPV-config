-- Show OSD message when custom seek or volume keys are pressed

local function show_message(msg)
    mp.osd_message(msg, 1.0)
end

-- 5-second seek with arrow keys
mp.add_key_binding("RIGHT", "seek+5", function()
    mp.command("seek 5")
    show_message("→ +5s")
end)

mp.add_key_binding("LEFT", "seek-5", function()
    mp.command("seek -5")
    show_message("← -5s")
end)


mp.add_key_binding("Ctrl+RIGHT", "seek+30", function()
    mp.command("seek 30")
    show_message(">> +30s")
end)

mp.add_key_binding("Ctrl+LEFT", "seek-30", function()
    mp.command("seek -30")
    show_message("<< -30s")
end)

mp.add_key_binding("UP", "vol+5", function()
    mp.command("add volume 5")
    show_message("Volume +5%")
end)

mp.add_key_binding("DOWN", "vol-5", function()
    mp.command("add volume -5")
    show_message("Volume -5%")
end)

