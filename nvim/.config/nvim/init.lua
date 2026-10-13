--
--      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
--      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
--      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
--      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
--      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
--      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
--
--                                        MY_NEOVIM_CONFIG
--                                               By 忆の风
--
--
--

require("config.basic")
require("core.lazy")
require("config.keymap")
require("core.lsp")

require("config.run")
require("config.alg")

vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { link = "Normal" })
