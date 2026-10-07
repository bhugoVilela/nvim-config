if vim.g.current_compiler == "npm-lint" then
  return
end
vim.g.current_compiler = "npm-lint"

-- 1. Set the command to run
vim.opt_local.makeprg = "npx eslint src/**/*.{js,ts} --format unix \\| sed -e $'s/\x1b\\[[0-9;]*m//g'"

vim.cmd("setlocal errorformat&")
