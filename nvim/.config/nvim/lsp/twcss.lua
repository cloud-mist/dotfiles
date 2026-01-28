return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = { "astro", "html", "css", "javascript", "typescript" },
	settings = {
		tailwindCSS = {
			includeLanguages = {
				astro = "html",
			},
		},
	},
	root_markers = { "tailwind.config.js", "tailwind.config.cjs", "tailwind.config.mjs", "tailwind.config.ts" },
}
