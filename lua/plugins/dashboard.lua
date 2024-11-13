local space = string.rep(" ", 30)
local logo = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]]
-- local logo = [[
--  ███▄    █  ▓█████   ▒█████    ██▒   █▓  ██▓  ███▄ ▄███▓
--  ██ ▀█   █  ▓█   ▀  ▒██▒  ██▒ ▓██░   █▒ ▓██▒ ▓██▒▀█▀ ██▒
-- ▓██  ▀█ ██▒ ▒███    ▒██░  ██▒  ▓██  █▒░ ▒██▒ ▓██    ▓██░
-- ▓██▒  ▐▌██▒ ▒▓█  ▄  ▒██   ██░   ▒██ █░░ ░██░ ▒██    ▒██
-- ▒██░   ▓██░ ░▒████ ▒░ ████▓▒░    ▒▀█░   ░██░ ▒██▒   ░██▒
-- ░ ▒░   ▒ ▒  ░░ ▒░  ░░ ▒░▒░▒░     ░ ▐░   ░▓   ░ ▒░   ░  ░
-- ░ ░░   ░ ▒░  ░ ░   ░  ░ ▒ ▒░     ░ ░░    ▒ ░ ░  ░      ░
--    ░   ░ ░     ░    ░ ░ ░ ▒        ░░    ▒ ░ ░      ░
--          ░     ░   ░    ░ ░         ░    ░          ░
--                                    ░
-- ]]
logo = string.rep("\n", 8) .. logo .. "\n\n"

return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",

    opts = {
        theme = "doom",
        config = {
            header = vim.split(logo, "\n"),
            center = {
                {
                    action = "Telescope find_files",
                    icon = " ",
                    desc = " Find file" .. space,
                    key = "f",
                    key_format = "%s",
                },
                {
                    action = "ene | startinsert",
                    icon = " ",
                    desc = " New file",
                    key = "n",
                    key_format = "%s",
                },
                {
                    action = "Telescope oldfiles",
                    icon = " ",
                    desc = " Recent",
                    key = "r",
                    key_format = "%s",
                },
                {
                    action = "Telescope live_grep",
                    icon = " ",
                    desc = " Find text",
                    key = "g",
                    key_format = "%s",
                },
                {
                    action = "Lazy",
                    icon = "󰒲 ",
                    desc = " Lazy",
                    key = "l",
                    key_format = "%s",
                },
                {
                    action = "qa",
                    icon = " ",
                    desc = " Quit",
                    key = "q",
                    key_format = "%s",
                },
            },
            footer = {},
        },
    },
}
