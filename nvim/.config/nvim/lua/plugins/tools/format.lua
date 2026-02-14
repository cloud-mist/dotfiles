return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
				fsharp = { "fantomas" },
				go = { "goimports", "gofmt" },
				rust = { "rustfmt" },
				zig = { "zigfmt" },
				gleam = { "gleam" },
				odin = { "odinfmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				toml = { "taplo" },
				markdown = { "prettier" },
				astro = { "prettier" },
				python = function(bufnr)
					if require("conform").get_formatter_info("ruff_format", bufnr).available then
						return { "ruff_format" }
					else
						return { "isort", "black" }
					end
				end,
				-- Use the "*" filetype to run formatters on all filetypes.
				-- ["*"] = { "codespell" },

				-- Use the "_" filetype to run formatters on filetypes that don't
				-- have other formatters configured.
				["_"] = { "trim_whitespace" },
			},

			-- If this is set, Conform will run the formatter on save.
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
