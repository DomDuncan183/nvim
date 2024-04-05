return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",

    config = function()
        local logo = [[
███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
        ]]
        logo = string.rep("\n", 8) .. logo .. "\n\n"

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = vim.split(logo, "\n"),
                center = {
                    {
                        icon = " ",
                        desc = " Find file                              ",
                        action = "Telescope find_files",
                        key = "f",
                    },
                    {
                        action = "ene | startinsert",
                        desc = " New file                               ",
                        icon = " ",
                        key = "n",
                    },
                    {
                        icon = " ",
                        desc = " Recent files                           ",
                        action = "Telescope oldfiles",
                        key = "r",
                    },
                    {
                        action = "Telescope live_grep",
                        desc = " Find text                              ",
                        icon = " ",
                        key = "g",
                    },
                    {
                        icon = "󰒲 ",
                        desc = " Lazy                                   ",
                        action = "Lazy",
                        key = "l",
                    },
                    {
                        icon = " ",
                        desc = " Quit                                   ",
                        action = "qa",
                        key = "q",
                    },
                },
            },
        })
    end,
}
