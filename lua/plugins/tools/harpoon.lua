return {
    "ThePrimeagen/harpoon",
    lazy = true,

    --stylua: ignore
    keys = {
       { "<leader>ho", function() require("harpoon.ui").toggle_quick_menu() end, desc = "show menu" },
       { "<leader>ha", function() require("harpoon.mark").add_file()        end, desc = "show menu" },
       { "<M-1>",      function() require("harpoon.ui").nav_file(1)         end, desc = "go to file 1" },
       { "<M-2>",      function() require("harpoon.ui").nav_file(2)         end, desc = "go to file 2" },
       { "<M-3>",      function() require("harpoon.ui").nav_file(3)         end, desc = "go to file 3" },
       { "<M-4>",      function() require("harpoon.ui").nav_file(4)         end, desc = "go to file 4" },
       { "<M-5>",      function() require("harpoon.ui").nav_file(5)         end, desc = "go to file 5" },
       { "<M-6>",      function() require("harpoon.ui").nav_file(6)         end, desc = "go to file 6" },
       { "<M-7>",      function() require("harpoon.ui").nav_file(7)         end, desc = "go to file 7" },
       { "<M-8>",      function() require("harpoon.ui").nav_file(8)         end, desc = "go to file 8" },
       { "<M-9>",      function() require("harpoon.ui").nav_file(9)         end, desc = "go to file 9" },
       { "<M-0>",      function() require("harpoon.ui").nav_file(10)        end, desc = "go to file 10" },
    }
,
}
