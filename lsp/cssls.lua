return {
	cmd = {"vscode-css-language-server", "--stdio"},
	filetypes = { "css", "scss", "sass" },
	init_options = { provideFormatter = true }, -- needed to enable formatting capabilities
	root_markers = { 'package.json', '.git' },
	settings = {
		css = {
			validate = true
		},
		scss = {
			validate = true
		},
		sass = {
			validate = true
		},
	}
}
