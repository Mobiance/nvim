return {
    {
        "github/copilot.vim"
    },
    {

        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            -- The following are optional:
            { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
        },

        keys = {
            { "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Code Companion Chat" },
            { "<leader>ca", "<cmd>CodeCompanionActions<cr>",     desc = "Code Companion Actions" },
        },
        config = function()
            require("codecompanion").setup({
                strategies = {
                    chat = {
                        adapter = "openai",
                    },
                    inline = {
                        adapter = "openai",
                    },
                },
                opts = {
                    stream = true,
                },
                adapters = {
                    openai = function()
                        return require("codecompanion.adapters").extend("openai_compatible", {
                            name = "codestral",
                            env = {
                                url = "https://codestral.mistral.ai",
                                api_key = "cXVJWXktXL6MB6Fka9T0Fq1e8H85tKy4",
                                chat_url = "/v1/chat/completions"
                            },
                            handlers = {
                                form_parameters = function(self, params, messages)
                                    -- codestral doesn't support these in the body
                                    params.stream_options = nil
                                    params.options = nil

                                    return params
                                end,
                            },
                            schema = {
                                model = {
                                    default = "codestral-latest",
                                },
                                temperature = {
                                    default = 0.2,
                                    mapping = "parameters", -- not supported in default parameters.options
                                },
                            },
                        })
                    end,
                },
            })
        end
    }
}
