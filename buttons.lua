
btn_cheat = {
    ["text"] = "Cheat",
    ["pos"] = Vector(gui_pos.x, 830),
    ["size"] = Vector(150, 40)
}


btn_upgrade = {
    ["text"] = "Upgrade Tower",
    ["pos"] = Vector(850, 750),
    ["size"] = Vector(130, 40)
}

btn_mute = {
    ["text"] = "Mute",
    ["pos"] = Vector(gui_pos.x+120, 38),
    ["size"] = Vector(32, 32),
    ["img"] = "res/mute.png",
    ["alt_img"] = "res/unmute.png",
    ["use_alt_img"] = true
}

btn_start_wave_new = {
    ["pos"] = Vector(gui_pos.x, 550),
    ["size"] = Vector(64, 64),
    ["img"] = "res/start_wave.png"
}

btn_fast_forward_new = {
    ["pos"] = Vector(gui_pos.x + 80, 550),
    ["size"] = Vector(64, 64),
    ["img"] = "res/fast_forward.png",
    ["alt_img"] = "res/normal_speed.png",
    ["use_alt_img"] = false
}

tower_modes = {"First", "Last", "Closest", "Strongest"}

btn_tower_modes = {}

btn_tower_modes_gen = function ( ... )
    for i = 1, #tower_modes do

        local offsetX = (i-1)%6
        local offsetY = (math.floor(i/7) == 1) and 34 or 0

        local btn = {
            ["text"] = tower_modes[i],
            ["mode"] = tower_modes[i],
            ["pos"] = Vector(350 + offsetX * 80, 750 + offsetY),
            ["size"] = Vector(75, 28)
        }

        table.insert(btn_tower_modes, btn)

    end
end

btn_tower_modes_gen()