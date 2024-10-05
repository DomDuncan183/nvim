return {
    {
        "theHamsta/nvim-dap-virtual-text",
        lazy = true,
        opts = {},
    },
    {
        "mfussenegger/nvim-dap",
        lazy = true,

        opts = {
            adapters = {
                gdb = {
                    type = "executable",
                    command = "gdb",
                    args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
                },
            },
            configurations = {
                cpp = {
                    {
                        name = "Launch",
                        type = "gdb",
                        request = "launch",
                        program = function()
                            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                        end,
                        cwd = "${workspaceFolder}",
                        stopAtBeginningOfMainSubprogram = false,
                    },
                },
            },
        },

        config = function(_, opts)
            for k, v in pairs(opts) do
                for l, w in pairs(v) do
                    require("dap")[k][l] = w
                end
            end
        end,

        -- stylua: ignore
        keys = {
            { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
            { "<leader>db", function() require("dap").toggle_breakpoint()                                    end, desc = "Toggle Breakpoint" },
            { "<leader>dc", function() require("dap").continue()                                             end, desc = "Continue" },
            { "<leader>dC", function() require("dap").run_to_cursor()                                        end, desc = "Run to Cursor" },
            { "<leader>dg", function() require("dap").goto_()                                                end, desc = "Go to line (no execute)" },
            { "<leader>di", function() require("dap").step_into()                                            end, desc = "Step Into" },
            { "<leader>dj", function() require("dap").down()                                                 end, desc = "Down" },
            { "<leader>dk", function() require("dap").up()                                                   end, desc = "Up" },
            { "<leader>dl", function() require("dap").run_last()                                             end, desc = "Run Last" },
            { "<leader>do", function() require("dap").step_out()                                             end, desc = "Step Out" },
            { "<leader>dO", function() require("dap").step_over()                                            end, desc = "Step Over" },
            { "<leader>dp", function() require("dap").pause()                                                end, desc = "Pause" },
            { "<leader>dr", function() require("dap").repl.toggle()                                          end, desc = "Toggle REPL" },
            { "<leader>ds", function() require("dap").session()                                              end, desc = "Session" },
            { "<leader>dt", function() require("dap").terminate()                                            end, desc = "Terminate" },
            { "<leader>dw", function() require("dap.ui.widgets").hover()                                     end, desc = "Widgets" },
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = "nvim-neotest/nvim-nio",
        lazy = true,

        -- stylua: ignore
        keys = {
            { "<leader>du", function() require("dapui").toggle()   end, desc = "Dap UI" },
            { "<leader>de", function() require("dapui").eval()     end, desc = "Eval",  mode = { "n", "v" } },
        },

        opts = {
            before = {
                event_exited = function()
                    require("dapui").close()
                end,
                event_terminated = function()
                    require("dapui").close()
                end,
            },
            after = {
                event_initialized = function()
                    require("dapui").open()
                end,
            },
        },

        config = function(_, opts)
            require("dapui").setup()
            for before, event in pairs(opts) do
                for k, v in pairs(event) do
                    require("dap").listeners[before][k]["dapui_config"] = v
                end
            end

            -- local dap, dapui = require("dap"), require("dapui")
            -- dap.listeners.before.attach.dapui_config = function()
            --     dapui.open()
            -- end
            -- dap.listeners.before.launch.dapui_config = function()
            --     dapui.open()
            -- end
            -- dap.listeners.before.event_terminated.dapui_config = function()
            --     dapui.close()
            -- end
            -- dap.listeners.before.event_exited.dapui_config = function()
            --     dapui.close()
            -- end
        end,
    },
}
