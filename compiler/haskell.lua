if vim.g.current_compiler == "haskell" then
  return
end
vim.g.current_compiler = "haskell"

-- 1. Set the command to run
vim.opt_global.makeprg = "stack clean && stack build"

-- 2. Set the error format for parsing results
-- This format handles typical tsc/typescript output
-- vim.opt_local.errorformat = "%f(%l\\,%c): %t%*[^:]: %m,%f:%l:%c - %t%*[^:]: %m,%f:%l:%c: %t%*[^:]: %m"
