require('bhugo.Other')
require('bhugo.OpenApi')

local function dap_menu()
	vim.ui.select({
		"Toggle Breakpoint",
		"Conditional Breakpoint",
		"Continue",
		"Next",
		"Into",
		"Out",
		"Exit",
		"Repl",
	}, {}, function(choice)
		local dap = require('dap')
		if (choice == "Toggle Breakpoint") then
			dap.toggle_breakpoint()
		elseif choice == "Conditional Breakpoint" then
			vim.ui.input({ prompt = "Condition:" }, function(input)
				dap.toggle_breakpoint(input or "")
			end)
		elseif choice == "Continue" then
			dap.continue()
		elseif choice == "Next" then
			dap.step_over()
		elseif choice == "Into" then
			dap.step_into()
		elseif choice == "Out" then
			dap.step_out()
		elseif choice == "Exit" then
			dap.close()
		elseif choice == "Repl" then
			dap.repl.open()
		end
	end)
end


vim.keymap.set("n", ",d", function() dap_menu() end, { desc = "open dap menu" })
