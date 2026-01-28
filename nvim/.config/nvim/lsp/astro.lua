return {
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
	init_options = {
		typescript = {
			-- 必须指向你全局或当前项目 pnpm 安装的 typescript 库路径
			tsdk = "/home/shawn/.local/share/pnpm/global/5/node_modules/typescript/lib",
		},
	},
}
