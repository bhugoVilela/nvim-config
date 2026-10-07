if vim.g.current_compiler == "npm-typecheck" then
  return
end
vim.g.current_compiler = "npm-typecheck"

-- 1. Set the command to run
vim.opt_local.makeprg = "npm run typecheck \\| sed -e $'s/\x1b\\[[0-9;]*m//g'"

-- 2. Set the error format for parsing results
-- This format handles typical tsc/typescript output
vim.opt_local.errorformat = "%f(%l\\,%c): %t%*[^:]: %m,%f:%l:%c - %t%*[^:]: %m,%f:%l:%c: %t%*[^:]: %m"
