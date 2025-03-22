local ns_id = 0
vim.o.termguicolors = true
vim.g.colors_name = "testing"
vim.api.nvim_set_hl(ns_id, "Substitute", {
  link = "Search"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteCul", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "Todo", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteNr", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdelete", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "VisualNOS", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteCul", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteNr", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "DevIconSecurity", {
  ctermfg = 251,
  fg = "#bec4c9"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteCul", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteNr", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChange", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "Character", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "DevIconGDScript", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectiveCPlusPlus", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconQuery", {
  ctermfg = 107,
  fg = "#90a850"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddCul", {
  fg = "#597b60"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddLn", {
  bg = "#005523",
  fg = "#77787c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddNr", {
  fg = "#597b60"
})
vim.api.nvim_set_hl(ns_id, "Float", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "DevIconMli", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconHTTP", {
  ctermfg = 31,
  fg = "#008ec7"
})
vim.api.nvim_set_hl(ns_id, "Conditional", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntrackedLn", {
  link = "GitSignsAddLn"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntrackedNr", {
  link = "GitSignsAddNr"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangedelete", {
  link = "GitSignsChange"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangedeleteCul", {
  link = "GitSignsChangeCul"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangedeleteLn", {
  link = "GitSignsChangeLn"
})
vim.api.nvim_set_hl(ns_id, "Repeat", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconMkv", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "Label", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteLn", {})
vim.api.nvim_set_hl(ns_id, "DevIconMd5", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "Exception", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconMd", {
  ctermfg = 253,
  fg = "#dddddd"
})
vim.api.nvim_set_hl(ns_id, "Include", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "DevIconMagnet", {
  ctermfg = 124,
  fg = "#a51b16"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChange", {
  link = "Changed"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeCul", {
  link = "GitSignsChange"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeLn", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeNr", {
  link = "GitSignsChange"
})
vim.api.nvim_set_hl(ns_id, "Define", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddCul", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "Macro", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "DevIconM4V", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "DevIconMPEG4", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconJsonc", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconM3u8", {
  ctermfg = 211,
  fg = "#ed95ae"
})
vim.api.nvim_set_hl(ns_id, "DevIconM3u", {
  ctermfg = 211,
  fg = "#ed95ae"
})
vim.api.nvim_set_hl(ns_id, "DevIconAndroid", {
  ctermfg = 35,
  fg = "#34a853"
})
vim.api.nvim_set_hl(ns_id, "DevIconLrc", {
  ctermfg = 214,
  fg = "#ffb713"
})
vim.api.nvim_set_hl(ns_id, "DevIconMonkeysAudio", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "StatusLineNC", {
  bg = "NvimDarkGrey3",
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey3"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineInactive", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "StatusLine", {
  bg = "NvimLightGrey3",
  cterm = {
    reverse = true
  },
  fg = "NvimDarkGrey3"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineFileinfo", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineFilename", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineDevinfo", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeOther", {
  link = "IncSearch"
})
vim.api.nvim_set_hl(ns_id, "DiffText", {
  bg = "NvimDarkCyan",
  ctermbg = 14,
  ctermfg = 0,
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeCommand", {
  link = "DiffText"
})
vim.api.nvim_set_hl(ns_id, "DiffDelete", {
  bold = true,
  cterm = {
    bold = true
  },
  ctermfg = 9,
  fg = "NvimLightRed"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeReplace", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "DiffAdd", {
  bg = "NvimDarkGreen",
  ctermbg = 10,
  ctermfg = 0,
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeVisual", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "DiffChange", {
  bg = "NvimDarkGrey4",
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeInsert", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "Cursor", {
  bg = "fg",
  fg = "bg"
})
vim.api.nvim_set_hl(ns_id, "MiniStatuslineModeNormal", {
  link = "Cursor"
})
vim.api.nvim_set_hl(ns_id, "MiniIcons", {})
vim.api.nvim_set_hl(ns_id, "Visual", {
  bg = "NvimDarkGrey4",
  ctermbg = 15,
  ctermfg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconRobotsTxt", {
  ctermfg = 60,
  fg = "#5d7096"
})
vim.api.nvim_set_hl(ns_id, "DevIconRakefile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvelte", {
  ctermfg = 196,
  fg = "#ff3e00"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrusaSlicer", {
  ctermfg = 202,
  fg = "#ec6b23"
})
vim.api.nvim_set_hl(ns_id, "DevIconNushell", {
  ctermfg = 36,
  fg = "#3aa675"
})
vim.api.nvim_set_hl(ns_id, "DevIconMaven", {
  ctermfg = 52,
  fg = "#7a0d21"
})
vim.api.nvim_set_hl(ns_id, "DevIconPlatformio", {
  ctermfg = 208,
  fg = "#f6822b"
})
vim.api.nvim_set_hl(ns_id, "DevIconLogos", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconScala", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenlive", {
  ctermfg = 110,
  fg = "#83b8f2"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdbx", {
  ctermfg = 71,
  fg = "#529b34"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdb", {
  ctermfg = 71,
  fg = "#529b34"
})
vim.api.nvim_set_hl(ns_id, "DevIconKbx", {
  ctermfg = 243,
  fg = "#737672"
})
vim.api.nvim_set_hl(ns_id, "WinBar", {
  bg = "NvimDarkGrey1",
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "WinBarNC", {
  bg = "NvimDarkGrey1",
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "SignColumn", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "DevIconLhs", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconJWM", {
  ctermfg = 32,
  fg = "#0078cd"
})
vim.api.nvim_set_hl(ns_id, "DevIconKotlinScript", {
  ctermfg = 99,
  fg = "#7f52ff"
})
vim.api.nvim_set_hl(ns_id, "LspInlayHint", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "DevIconPhp", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconImg", {
  ctermfg = 181,
  fg = "#d0bec8"
})
vim.api.nvim_set_hl(ns_id, "DevIconImage", {
  ctermfg = 181,
  fg = "#d0bec8"
})
vim.api.nvim_set_hl(ns_id, "DevIconIgs", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconIges", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitLogo", {
  ctermfg = 196,
  fg = "#f14c28"
})
vim.api.nvim_set_hl(ns_id, "DevIconVercel", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "WhichKey", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "DevIconKsh", {
  ctermfg = 240,
  fg = "#4d5a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconIfc", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconIfb", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconKrita", {
  ctermfg = 201,
  fg = "#f245fb"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcs", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcalendar", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconLinuxKernelObject", {
  ctermfg = 253,
  fg = "#dcddd6"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcal", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCad", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconSignature", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconTailwindConfig", {
  ctermfg = 45,
  fg = "#20c2e3"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadSymbolTable", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconTerminal", {
  ctermfg = 34,
  fg = "#31b53e"
})
vim.api.nvim_set_hl(ns_id, "DevIconJava", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvelteConfig", {
  ctermfg = 196,
  fg = "#ff3e00"
})
vim.api.nvim_set_hl(ns_id, "DevIconHeex", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconSwift", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconExe", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconGleam", {
  ctermfg = 219,
  fg = "#ffaff3"
})
vim.api.nvim_set_hl(ns_id, "DevIconCobol", {
  ctermfg = 25,
  fg = "#005ca5"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEneon", {
  ctermfg = 37,
  fg = "#20a6a4"
})
vim.api.nvim_set_hl(ns_id, "DevIconErl", {
  ctermfg = 163,
  fg = "#b83998"
})
vim.api.nvim_set_hl(ns_id, "DevIconHbs", {
  ctermfg = 202,
  fg = "#f0772b"
})
vim.api.nvim_set_hl(ns_id, "DevIconAOSC", {
  ctermfg = 124,
  fg = "#c00000"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitAttributes", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconErb", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitIgnore", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconFish", {
  ctermfg = 240,
  fg = "#4d5a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIcon7z", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconEnlightenment", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconKali", {
  ctermfg = 69,
  fg = "#2777ff"
})
vim.api.nvim_set_hl(ns_id, "Tag", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "MoreMsg", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "ErrorMsg", {
  ctermfg = 9,
  fg = "NvimLightRed"
})
vim.api.nvim_set_hl(ns_id, "DevIconDart", {
  ctermfg = 25,
  fg = "#03589c"
})
vim.api.nvim_set_hl(ns_id, "DevIconPl", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconBash", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconUbuntu", {
  ctermfg = 196,
  fg = "#dd4814"
})
vim.api.nvim_set_hl(ns_id, "DevIconCue", {
  ctermfg = 211,
  fg = "#ed95ae"
})
vim.api.nvim_set_hl(ns_id, "DevIconSway", {
  ctermfg = 64,
  fg = "#68751c"
})
vim.api.nvim_set_hl(ns_id, "DevIconVLC", {
  ctermfg = 208,
  fg = "#ee7a00"
})
vim.api.nvim_set_hl(ns_id, "DevIconQtile", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconGCode", {
  ctermfg = 32,
  fg = "#1471ad"
})
vim.api.nvim_set_hl(ns_id, "DevIconIllumos", {
  ctermfg = 196,
  fg = "#ff430f"
})
vim.api.nvim_set_hl(ns_id, "DevIconConfig", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconCache", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconIge", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyperbolaGNULinuxLibre", {
  ctermfg = 250,
  fg = "#c0c0c0"
})
vim.api.nvim_set_hl(ns_id, "DevIconXresources", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "DevIconXInitrc", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "DevIconPls", {
  ctermfg = 211,
  fg = "#ed95ae"
})
vim.api.nvim_set_hl(ns_id, "DevIconPng", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconLock", {
  ctermfg = 250,
  fg = "#bbbbbb"
})
vim.api.nvim_set_hl(ns_id, "DevIconSRCINFO", {
  ctermfg = 67,
  fg = "#0f94d2"
})
vim.api.nvim_set_hl(ns_id, "DevIconi3", {
  ctermfg = 255,
  fg = "#e8ebee"
})
vim.api.nvim_set_hl(ns_id, "DevIconGuix", {
  ctermfg = 220,
  fg = "#ffcc00"
})
vim.api.nvim_set_hl(ns_id, "DevIconSettingsJson", {
  ctermfg = 98,
  fg = "#854cc7"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrettierIgnore", {
  ctermfg = 33,
  fg = "#4285f4"
})
vim.api.nvim_set_hl(ns_id, "DevIconEndeavour", {
  ctermfg = 91,
  fg = "#7b3db9"
})
vim.api.nvim_set_hl(ns_id, "DevIconPp", {
  ctermfg = 214,
  fg = "#ffa61a"
})
vim.api.nvim_set_hl(ns_id, "DevIconPpt", {
  ctermfg = 160,
  fg = "#cb4a32"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrettierConfig", {
  ctermfg = 33,
  fg = "#4285f4"
})
vim.api.nvim_set_hl(ns_id, "DevIconLuau", {
  ctermfg = 75,
  fg = "#00a2ff"
})
vim.api.nvim_set_hl(ns_id, "DevIconQubesOS", {
  ctermfg = 33,
  fg = "#3774d8"
})
vim.api.nvim_set_hl(ns_id, "DevIconMarkdown", {
  ctermfg = 253,
  fg = "#dddddd"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextHint", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "DevIconProlog", {
  ctermfg = 179,
  fg = "#e4b854"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticDeprecated", {
  cterm = {
    strikethrough = true
  },
  sp = "NvimLightRed",
  strikethrough = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnnecessary", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextWarn", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "DevIconGentoo", {
  ctermfg = 146,
  fg = "#b1abce"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingHint", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingError", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingWarn", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "DevIconAstro", {
  ctermfg = 197,
  fg = "#e23f67"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignHint", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsb", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIcon3gp", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "DevIconPub", {
  ctermfg = 222,
  fg = "#e3c58e"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenIcon", {
  link = "Conceal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeModifiedFolderHL", {
  link = "NvimTreeModifiedFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeModifiedFileHL", {
  link = "NvimTreeModifiedIcon"
})
vim.api.nvim_set_hl(ns_id, "DevIconPxd", {
  ctermfg = 39,
  fg = "#5aa7e4"
})
vim.api.nvim_set_hl(ns_id, "DevIconGarudaLinux", {
  ctermfg = 33,
  fg = "#2974e1"
})
vim.api.nvim_set_hl(ns_id, "SpellLocal", {
  cterm = {
    undercurl = true
  },
  sp = "NvimLightGreen",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderIcon", {
  ctermfg = 12,
  fg = "#8094b4"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCopiedHL", {
  link = "SpellRare"
})
vim.api.nvim_set_hl(ns_id, "SpellRare", {
  cterm = {
    undercurl = true
  },
  sp = "NvimLightCyan",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCutHL", {
  link = "SpellBad"
})
vim.api.nvim_set_hl(ns_id, "SpellBad", {
  cterm = {
    undercurl = true
  },
  sp = "NvimLightRed",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLiveFilterValue", {
  link = "ModeMsg"
})
vim.api.nvim_set_hl(ns_id, "DevIconPKGBUILD", {
  ctermfg = 67,
  fg = "#0f94d2"
})
vim.api.nvim_set_hl(ns_id, "DevIconRmd", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconNuxtConfig", {
  ctermfg = 42,
  fg = "#00c58e"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeIndentMarker", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderArrowOpen", {
  link = "NvimTreeIndentMarker"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderArrowClosed", {
  link = "NvimTreeIndentMarker"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeClosedFolderIcon", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedFolderIcon", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeBSD", {
  ctermfg = 160,
  fg = "#c90f02"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlinkIcon", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormal", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileIcon", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlinkFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "Directory", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "DevIconMixLock", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "DevIconEditorConfig", {
  ctermfg = 255,
  fg = "#fff2f2"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlink", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "Underlined", {
  cterm = {
    underline = true
  },
  underline = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSpecialFile", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeImageFile", {
  link = "Question"
})
vim.api.nvim_set_hl(ns_id, "Question", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeExecFile", {
  link = "Question"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackageLockJson", {
  ctermfg = 52,
  fg = "#7a0d21"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeStatusLine", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "DevIconVagrantfile", {
  ctermfg = 27,
  fg = "#1563ff"
})
vim.api.nvim_set_hl(ns_id, "CursorLineNr", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorLine", {
  link = "CursorLine"
})
vim.api.nvim_set_hl(ns_id, "CursorLine", {
  bg = "NvimDarkGrey3"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorColumn", {
  link = "CursorColumn"
})
vim.api.nvim_set_hl(ns_id, "CursorColumn", {
  bg = "NvimDarkGrey3"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSignColumn", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "DevIconNPMrc", {
  ctermfg = 197,
  fg = "#e8274b"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeEndOfBuffer", {
  link = "EndOfBuffer"
})
vim.api.nvim_set_hl(ns_id, "DevIconGvimrc", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeWinSeparator", {
  link = "WinSeparator"
})
vim.api.nvim_set_hl(ns_id, "WinSeparator", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "@string.regexp", {
  link = "@string.special"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalNC", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalFloatBorder", {
  link = "FloatBorder"
})
vim.api.nvim_set_hl(ns_id, "FloatBorder", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalFloat", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "@character.special", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "@boolean", {
  link = "Boolean"
})
vim.api.nvim_set_hl(ns_id, "@number", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "@number.float", {
  link = "Float"
})
vim.api.nvim_set_hl(ns_id, "@type", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "@type.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@attribute", {
  link = "Macro"
})
vim.api.nvim_set_hl(ns_id, "@attribute.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@property", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "@function", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "@function.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@constructor", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@operator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "Constant", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "@punctuation", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "@punctuation.special", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@comment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "@comment.error", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "Boolean", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "@comment.note", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "Operator", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "@markup", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@markup.strong", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "String", {
  ctermfg = 10,
  fg = "NvimLightGreen"
})
vim.api.nvim_set_hl(ns_id, "Struct", {})
vim.api.nvim_set_hl(ns_id, "@markup.strikethrough", {
  cterm = {
    strikethrough = true
  },
  strikethrough = true
})
vim.api.nvim_set_hl(ns_id, "@markup.underline", {
  cterm = {
    underline = true
  },
  underline = true
})
vim.api.nvim_set_hl(ns_id, "@markup.heading", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "@diff", {})
vim.api.nvim_set_hl(ns_id, "@diff.plus", {
  link = "Added"
})
vim.api.nvim_set_hl(ns_id, "@diff.minus", {
  link = "Removed"
})
vim.api.nvim_set_hl(ns_id, "@diff.delta", {
  link = "Changed"
})
vim.api.nvim_set_hl(ns_id, "@tag", {
  link = "Tag"
})
vim.api.nvim_set_hl(ns_id, "@tag.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@lsp", {})
vim.api.nvim_set_hl(ns_id, "@lsp.type.class", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.comment", {
  link = "@comment"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.decorator", {
  link = "@attribute"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.enum", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.enumMember", {
  link = "@constant"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.event", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.function", {
  link = "@function"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.interface", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.keyword", {
  link = "@keyword"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.macro", {
  link = "@constant.macro"
})
vim.api.nvim_set_hl(ns_id, "DevIconDesktopEntry", {
  ctermfg = 54,
  fg = "#563d7c"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.modifier", {
  link = "@type.qualifier"
})
vim.api.nvim_set_hl(ns_id, "Changed", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.namespace", {
  link = "@module"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.number", {
  link = "@number"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.operator", {
  link = "@operator"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.parameter", {
  link = "@variable.parameter"
})
vim.api.nvim_set_hl(ns_id, "DevIconGNOME", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconEx", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconRaspberryPiOS", {
  ctermfg = 161,
  fg = "#be1848"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.string", {
  link = "@string"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.struct", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.type", {
  link = "@type"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.typeParameter", {
  link = "@type.definition"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.variable", {
  link = "@variable"
})
vim.api.nvim_set_hl(ns_id, "DevIconCinnamon", {
  ctermfg = 166,
  fg = "#dc682e"
})
vim.api.nvim_set_hl(ns_id, "DevIconTorrent", {
  ctermfg = 43,
  fg = "#44cda8"
})
vim.api.nvim_set_hl(ns_id, "DevIconIni", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconBzl", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconCss", {
  ctermfg = 75,
  fg = "#42a5f5"
})
vim.api.nvim_set_hl(ns_id, "@ibl", {})
vim.api.nvim_set_hl(ns_id, "DevIconJpegXl", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebp", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconMl", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconTmux", {
  ctermfg = 34,
  fg = "#14ba19"
})
vim.api.nvim_set_hl(ns_id, "DevIconLeex", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconJpeg", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconJpg", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconAvif", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconAlmalinux", {
  ctermfg = 203,
  fg = "#ff4649"
})
vim.api.nvim_set_hl(ns_id, "DevIconEpub", {
  ctermfg = 215,
  fg = "#eab16d"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenSCAD", {
  ctermfg = 220,
  fg = "#f9d72c"
})
vim.api.nvim_set_hl(ns_id, "DevIconTgz", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconpostmarketOS", {
  ctermfg = 28,
  fg = "#009900"
})
vim.api.nvim_set_hl(ns_id, "DevIconTFVars", {
  ctermfg = 93,
  fg = "#5f43e9"
})
vim.api.nvim_set_hl(ns_id, "DevIconLog", {
  ctermfg = 253,
  fg = "#dddddd"
})
vim.api.nvim_set_hl(ns_id, "DevIconAwk", {
  ctermfg = 240,
  fg = "#4d5a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconCsh", {
  ctermfg = 240,
  fg = "#4d5a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconCoffee", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconDot", {
  ctermfg = 24,
  fg = "#30638e"
})
vim.api.nvim_set_hl(ns_id, "DevIconApple", {
  ctermfg = 248,
  fg = "#a2aaad"
})
vim.api.nvim_set_hl(ns_id, "DevIconSlim", {
  ctermfg = 196,
  fg = "#e34c26"
})
vim.api.nvim_set_hl(ns_id, "DevIconBat", {
  ctermfg = 191,
  fg = "#c1f12e"
})
vim.api.nvim_set_hl(ns_id, "DevIconXul", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconBicepParameters", {
  ctermfg = 133,
  fg = "#9f74b3"
})
vim.api.nvim_set_hl(ns_id, "DevIconLicense", {
  ctermfg = 185,
  fg = "#d0bf41"
})
vim.api.nvim_set_hl(ns_id, "DevIconTempl", {
  ctermfg = 178,
  fg = "#dbbd30"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScript", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconVala", {
  ctermfg = 91,
  fg = "#7239b3"
})
vim.api.nvim_set_hl(ns_id, "DevIconZst", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconBlueprint", {
  ctermfg = 68,
  fg = "#5796e2"
})
vim.api.nvim_set_hl(ns_id, "DevIconReScript", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconHaml", {
  ctermfg = 255,
  fg = "#eaeae1"
})
vim.api.nvim_set_hl(ns_id, "DevIconElm", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconJson5", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconLess", {
  ctermfg = 54,
  fg = "#563d7c"
})
vim.api.nvim_set_hl(ns_id, "DevIconDocx", {
  ctermfg = 26,
  fg = "#185abd"
})
vim.api.nvim_set_hl(ns_id, "DevIconVHDL", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "DevIconEpp", {
  ctermfg = 214,
  fg = "#ffa61a"
})
vim.api.nvim_set_hl(ns_id, "DevIconFs", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEglobals", {
  ctermfg = 32,
  fg = "#1c99f3"
})
vim.api.nvim_set_hl(ns_id, "DevIconPdf", {
  ctermfg = 124,
  fg = "#b30b00"
})
vim.api.nvim_set_hl(ns_id, "DevIconVue", {
  ctermfg = 113,
  fg = "#8dc149"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebm", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsharp", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsi", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconNotebook", {
  ctermfg = 74,
  fg = "#51a0cf"
})
vim.api.nvim_set_hl(ns_id, "DevIconSh", {
  ctermfg = 240,
  fg = "#4d5a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconRb", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconMustache", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconGraphQL", {
  ctermfg = 199,
  fg = "#e535ab"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedHL", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedFile", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeModifiedIcon", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeModifiedFile", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeBookmarkIcon", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeBookmark", {})
vim.api.nvim_set_hl(ns_id, "DevIconNim", {
  ctermfg = 220,
  fg = "#f3d400"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineInfo", {
  cterm = {
    underline = true
  },
  sp = "NvimLightCyan",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineWarn", {
  cterm = {
    underline = true
  },
  sp = "NvimLightYellow",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineError", {
  cterm = {
    underline = true
  },
  sp = "NvimLightRed",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DevIconXml", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticInfo", {
  bg = "#303030",
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticWarn", {
  ctermfg = 11,
  fg = "NvimLightYellow"
})
vim.api.nvim_set_hl(ns_id, "DevIconTxt", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconJl", {
  ctermfg = 133,
  fg = "#a270ba"
})
vim.api.nvim_set_hl(ns_id, "Comment", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "Statement", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "Special", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenDisplay", {
  link = "Conceal"
})
vim.api.nvim_set_hl(ns_id, "Conceal", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenFolderHL", {
  link = "NvimTreeHiddenFileHL"
})
vim.api.nvim_set_hl(ns_id, "DevIconNixOS", {
  ctermfg = 110,
  fg = "#7ab1db"
})
vim.api.nvim_set_hl(ns_id, "DevIconXcPlayground", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconAPL", {
  ctermfg = 214,
  fg = "#ffa500"
})
vim.api.nvim_set_hl(ns_id, "DevIconXaml", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconNodeModules", {
  ctermfg = 197,
  fg = "#e8274b"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha224", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "DevIconNfo", {
  ctermfg = 230,
  fg = "#ffffcd"
})
vim.api.nvim_set_hl(ns_id, "DevIconI18nConfig", {
  ctermfg = 104,
  fg = "#7986cb"
})
vim.api.nvim_set_hl(ns_id, "DevIconZorin", {
  ctermfg = 39,
  fg = "#14a1e8"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha1", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "DevIconSrt", {
  ctermfg = 214,
  fg = "#ffb713"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyprpaper", {
  ctermfg = 37,
  fg = "#00aaae"
})
vim.api.nvim_set_hl(ns_id, "DevIconFortran", {
  ctermfg = 97,
  fg = "#734f96"
})
vim.api.nvim_set_hl(ns_id, "DevIconRproj", {
  ctermfg = 29,
  fg = "#358a5b"
})
vim.api.nvim_set_hl(ns_id, "DevIconRlib", {
  ctermfg = 216,
  fg = "#dea584"
})
vim.api.nvim_set_hl(ns_id, "DevIconDefault", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconWavPackCorrection", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconHypridle", {
  ctermfg = 37,
  fg = "#00aaae"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsd", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconGulpfile", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconWavPack", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconBz", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenTypeFont", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconGruntfile", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconMotoko", {
  ctermfg = 135,
  fg = "#9772fb"
})
vim.api.nvim_set_hl(ns_id, "DevIconMint", {
  ctermfg = 108,
  fg = "#87c095"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebOpenFontFormat", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconCPlusPlus", {
  ctermfg = 204,
  fg = "#f34b7d"
})
vim.api.nvim_set_hl(ns_id, "DevIconWindowsMediaAudio", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleWrapperProperties", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconBz3", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleProperties", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "IncSearch", {
  link = "CurSearch"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIcon", {
  link = "@markup.link"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticOk", {
  ctermfg = 10,
  fg = "NvimLightGreen"
})
vim.api.nvim_set_hl(ns_id, "@markup.link", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "LspSignatureActiveParameter", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "@ibl.indent.char.1", {
  cterm = {
    nocombine = true
  },
  link = "NonText",
  nocombine = true
})
vim.api.nvim_set_hl(ns_id, "@ibl.whitespace.char.1", {
  cterm = {
    nocombine = true
  },
  link = "NonText",
  nocombine = true
})
vim.api.nvim_set_hl(ns_id, "@ibl.scope.char.1", {
  cterm = {
    nocombine = true
  },
  fg = "#4f5258",
  nocombine = true
})
vim.api.nvim_set_hl(ns_id, "@ibl.scope.underline.1", {
  cterm = {
    underline = true
  },
  sp = "#4f5258",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DevIconZsh", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconScheme", {
  ctermfg = 255,
  fg = "#eeeeee"
})
vim.api.nvim_set_hl(ns_id, "DevIconPm", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconZip", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconZig", {
  ctermfg = 172,
  fg = "#f69a1b"
})
vim.api.nvim_set_hl(ns_id, "DevIconEmbeddedOpenTypeFont", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptReactTest", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXQtConfigFile", {
  ctermfg = 32,
  fg = "#0192d3"
})
vim.api.nvim_set_hl(ns_id, "DevIconAi", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconKritarc", {
  ctermfg = 201,
  fg = "#f245fb"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenliveLayoutsrc", {
  ctermfg = 110,
  fg = "#83b8f2"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidWorksPrt", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha384", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "DevIconProcfile", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconRss", {
  ctermfg = 215,
  fg = "#fb9d3b"
})
vim.api.nvim_set_hl(ns_id, "DevIconDsStore", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "DevIconSig", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyi", {
  ctermfg = 214,
  fg = "#ffbc03"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsscript", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconHexadecimal", {
  ctermfg = 27,
  fg = "#2e63ff"
})
vim.api.nvim_set_hl(ns_id, "DevIconCommitlintConfig", {
  ctermfg = 30,
  fg = "#2b9689"
})
vim.api.nvim_set_hl(ns_id, "DevIconCsv", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvg", {
  ctermfg = 214,
  fg = "#ffb13b"
})
vim.api.nvim_set_hl(ns_id, "DevIconHtm", {
  ctermfg = 196,
  fg = "#e34c26"
})
vim.api.nvim_set_hl(ns_id, "DevIconBlade", {
  ctermfg = 203,
  fg = "#f05340"
})
vim.api.nvim_set_hl(ns_id, "DevIconKritadisplayrc", {
  ctermfg = 201,
  fg = "#f245fb"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidLambda", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenliverc", {
  ctermfg = 110,
  fg = "#83b8f2"
})
vim.api.nvim_set_hl(ns_id, "DevIconCSharpProject", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconScalaScript", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyprlock", {
  ctermfg = 37,
  fg = "#00aaae"
})
vim.api.nvim_set_hl(ns_id, "DevIconRake", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidCallingParenthesis", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconIxx", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconHxx", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconAppleScript", {
  ctermfg = 66,
  fg = "#6d8085"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEventDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscriptColon", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidCurly", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidContainer", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconMaterial", {
  ctermfg = 163,
  fg = "#b83998"
})
vim.api.nvim_set_hl(ns_id, "DevIconFavicon", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconapk", {
  ctermfg = 35,
  fg = "#34a853"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindInterface", {
  link = "CmpItemKindInterfaceDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsx", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidList", {
  link = "NvimInvalidContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidValue", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifier", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "DevIconH", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTypeParameter", {
  link = "CmpItemKindTypeParameterDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconGz", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconGv", {
  ctermfg = 24,
  fg = "#30638e"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierScope", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidWorksAsm", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconPart", {
  ctermfg = 43,
  fg = "#44cda8"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindStruct", {
  link = "CmpItemKindStructDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconScss", {
  ctermfg = 204,
  fg = "#f55385"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierScopeDelimiter", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierKey", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidColon", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComma", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidArrow", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScript", {
  ctermfg = 208,
  fg = "#ff8700"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotProject", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconHaxe", {
  ctermfg = 208,
  fg = "#ea8220"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumMemberDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstant", {
  link = "CmpItemKindConstantDefault"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNumberPrefix", {
  link = "NvimInvalidNumber"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionSigil", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "DevIconKotlin", {
  ctermfg = 99,
  fg = "#7f52ff"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionScope", {
  link = "NvimInvalidIdentifierScope"
})
vim.api.nvim_set_hl(ns_id, "DevIconFennel", {
  ctermfg = 230,
  fg = "#fff3d7"
})
vim.api.nvim_set_hl(ns_id, "NvimDoubleQuote", {
  link = "NvimStringQuote"
})
vim.api.nvim_set_hl(ns_id, "NvimDoubleQuotedBody", {
  link = "NvimStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimDoubleQuotedEscape", {
  link = "NvimStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "NvimFigureBrace", {
  link = "NvimInternalError"
})
vim.api.nvim_set_hl(ns_id, "VM_Mono", {
  link = "IncSearch"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidEnvironmentSigil", {
  link = "NvimInvalidOptionSigil"
})
vim.api.nvim_set_hl(ns_id, "VM_Cursor", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "VM_Extend", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedUnknownEscape", {
  link = "NvimInternalError"
})
vim.api.nvim_set_hl(ns_id, "NvimSpacing", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidEnvironmentName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedUnknownEscape", {
  link = "NvimInternalError"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalid", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringQuote", {
  link = "NvimInvalidString"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignment", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringSpecial", {
  link = "NvimStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuote", {
  link = "NvimInvalidStringQuote"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyTitle", {
  link = "FloatTitle"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidPlainAssignment", {
  link = "NvimInvalidAssignment"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconRed", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedBody", {
  link = "NvimInvalidStringBody"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconOrange", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconGrey", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAugmentedAssignment", {
  link = "NvimInvalidAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignmentWithAddition", {
  link = "NvimInvalidAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedQuote", {
  link = "NvimInvalidStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconAzure", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyNormal", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyBorder", {
  link = "FloatBorder"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignmentWithSubtraction", {
  link = "NvimInvalidAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignmentWithConcatenation", {
  link = "NvimInvalidAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOperator", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidUnaryOperator", {
  link = "NvimInvalidOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuotedUnknownEscape", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidFigureBrace", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSpacing", {
  link = "ErrorMsg"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidUnaryPlus", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "MiniIconsYellow", {})
vim.api.nvim_set_hl(ns_id, "NvimDoubleQuotedUnknownEscape", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "debugPC", {})
vim.api.nvim_set_hl(ns_id, "NvimInvalidUnaryMinus", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNot", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryOperator", {
  link = "NvimInvalidOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComparison", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "MiniIconsCyan", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsBlue", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsAzure", {})
vim.api.nvim_set_hl(ns_id, "DevIconBz2", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComparisonModifier", {
  link = "NvimInvalidComparison"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoWork", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebmanifest", {
  ctermfg = 185,
  fg = "#f1e05a"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryPlus", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryMinus", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidConcat", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidConcatOrSubscript", {
  link = "NvimInvalidConcat"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoSum", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconSharedObject", {
  ctermfg = 253,
  fg = "#dcddd6"
})
vim.api.nvim_set_hl(ns_id, "DevIconDll", {
  ctermfg = 52,
  fg = "#4d2c0b"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOr", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconXfce", {
  ctermfg = 74,
  fg = "#00aadf"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAnd", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidMultiplication", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDivision", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidMod", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconMailmap", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidTernaryColon", {
  link = "NvimInvalidTernary"
})
vim.api.nvim_set_hl(ns_id, "DevIconSml", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "DevIconBigLinux", {
  ctermfg = 38,
  fg = "#189fc8"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualText", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextChanged", {
  link = "DiagnosticVirtualTextWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidParenthesis", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazel", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextError", {
  link = "DiagnosticVirtualTextError"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEPlasma", {
  ctermfg = 33,
  fg = "#1b89f4"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextInfo", {
  link = "DiagnosticVirtualTextInfo"
})
vim.api.nvim_set_hl(ns_id, "DevIconDrools", {
  ctermfg = 217,
  fg = "#ffafaf"
})
vim.api.nvim_set_hl(ns_id, "PmenuSel", {
  bg = "NvimLightGrey2",
  blend = 0,
  cterm = {
    reverse = true,
    underline = true
  },
  fg = "NvimDarkGrey3"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchFuzzy", {
  link = "CmpItemAbbrMatchFuzzyDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha256", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "DevIconMATE", {
  ctermfg = 113,
  fg = "#9bda5c"
})
vim.api.nvim_set_hl(ns_id, "DevIconSub", {
  ctermfg = 214,
  fg = "#ffb713"
})
vim.api.nvim_set_hl(ns_id, "DevIconGif", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconEex", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconXeroLinux", {
  ctermfg = 104,
  fg = "#888fe2"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXQt", {
  ctermfg = 32,
  fg = "#0191d2"
})
vim.api.nvim_set_hl(ns_id, "DevIconDump", {
  ctermfg = 188,
  fg = "#dad8d8"
})
vim.api.nvim_set_hl(ns_id, "DevIconParrot", {
  ctermfg = 45,
  fg = "#54deff"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXDE", {
  ctermfg = 248,
  fg = "#a4a4a4"
})
vim.api.nvim_set_hl(ns_id, "DevIconArchcraft", {
  ctermfg = 108,
  fg = "#86bba3"
})
vim.api.nvim_set_hl(ns_id, "Search", {
  bg = "NvimDarkYellow",
  ctermbg = 11,
  ctermfg = 0,
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenBSD", {
  ctermfg = 220,
  fg = "#f2ca30"
})
vim.api.nvim_set_hl(ns_id, "WarningMsg", {
  ctermfg = 11,
  fg = "NvimLightYellow"
})
vim.api.nvim_set_hl(ns_id, "DevIconArduino", {
  ctermfg = 73,
  fg = "#56b6c2"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitModules", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazelBuild", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconNPMIgnore", {
  ctermfg = 197,
  fg = "#e8274b"
})
vim.api.nvim_set_hl(ns_id, "DevIconBashrc", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitConfig", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackageJson", {
  ctermfg = 197,
  fg = "#e8274b"
})
vim.api.nvim_set_hl(ns_id, "DevIconJavaScriptReactSpec", {
  ctermfg = 45,
  fg = "#20c2e3"
})
vim.api.nvim_set_hl(ns_id, "DevIconTwig", {
  ctermfg = 113,
  fg = "#8dc149"
})
vim.api.nvim_set_hl(ns_id, "DevIconRazorPage", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrdownload", {
  ctermfg = 43,
  fg = "#44cda8"
})
vim.api.nvim_set_hl(ns_id, "DevIconXlsx", {
  ctermfg = 29,
  fg = "#207245"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsScriptModulefile", {
  ctermfg = 68,
  fg = "#6975c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha512", {
  ctermfg = 103,
  fg = "#8c86af"
})
vim.api.nvim_set_hl(ns_id, "DevIconCowsayFile", {
  ctermfg = 130,
  fg = "#965824"
})
vim.api.nvim_set_hl(ns_id, "DevIconGIMP", {
  ctermfg = 240,
  fg = "#635b46"
})
vim.api.nvim_set_hl(ns_id, "FloatShadowThrough", {
  bg = "NvimDarkGrey4",
  blend = 100,
  ctermbg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconConfigRu", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconWasm", {
  ctermfg = 62,
  fg = "#5c4cdb"
})
vim.api.nvim_set_hl(ns_id, "MatchParen", {
  bg = "NvimDarkGrey4",
  bold = true,
  cterm = {
    bold = true,
    underline = true
  }
})
vim.api.nvim_set_hl(ns_id, "DevIconInfo", {
  ctermfg = 230,
  fg = "#ffffcd"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureDart", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureJS", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureC", {
  ctermfg = 113,
  fg = "#8dc149"
})
vim.api.nvim_set_hl(ns_id, "DevIconC", {
  ctermfg = 111,
  fg = "#599eff"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrystal", {
  ctermfg = 251,
  fg = "#c8c8c8"
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugComposed", {
  bg = "NvimDarkGreen",
  ctermbg = 10,
  ctermfg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconCjs", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackedResource", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconBoundaryRepresentation", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpusAudioFile", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconBin", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconWaveformAudioFile", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconBackup", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineOk", {
  cterm = {
    underline = true
  },
  sp = "NvimLightGreen",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewBlock", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewDirectory", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewCharDev", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimInternalError", {
  bg = "Red",
  ctermbg = 9,
  ctermfg = 9,
  fg = "Red"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyValue", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "TelescopeNormal", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopeMultiIcon", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "TelescopeMultiSelection", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "TelescopeSelectionCaret", {
  link = "TelescopeSelection"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignment", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeSelection", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "NvimPlainAssignment", {
  link = "NvimAssignment"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindClassDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimAugmentedAssignment", {
  link = "NvimAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithAddition", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindMethod", {
  link = "CmpItemKindMethodDefault"
})
vim.api.nvim_set_hl(ns_id, "TelescopeBorder", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithSubtraction", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithConcatenation", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryOperator", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMatch", {
  link = "Search"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewLine", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffUntracked", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryPlus", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffAdd", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffChange", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "IblScope", {
  fg = "#4f5258"
})
vim.api.nvim_set_hl(ns_id, "IblWhitespace", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "IblIndent", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "LineNr", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "Whitespace", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptPrefix", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryOperator", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimComparison", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchDefault", {})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "Pmenu", {
  bg = "NvimDarkGrey3",
  cterm = {
    reverse = true
  }
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsLineNr", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "NvimComparisonModifier", {
  link = "NvimComparison"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsStruct", {
  link = "Struct"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindSnippetDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindValue", {
  link = "CmpItemKindValueDefault"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryPlus", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsMethod", {
  link = "Method"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFolder", {
  link = "CmpItemKindFolderDefault"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsField", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsClass", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMessageFillchar", {
  link = "TelescopePreviewMessage"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceWrite", {
  link = "LspReferenceText"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceRead", {
  link = "LspReferenceText"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceText", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindReferenceDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMessage", {
  link = "TelescopePreviewNormal"
})
vim.api.nvim_set_hl(ns_id, "DevIconManjaro", {
  ctermfg = 35,
  fg = "#33b959"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewDate", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewGroup", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewUser", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolus", {
  ctermfg = 239,
  fg = "#4b5163"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSticky", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindUnit", {
  link = "CmpItemKindUnitDefault"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewHyphen", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewExecute", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewWrite", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconArch", {
  ctermfg = 67,
  fg = "#0f94d2"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSocket", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconUI", {
  ctermfg = 27,
  fg = "#015bf0"
})
vim.api.nvim_set_hl(ns_id, "DressingSelectIdx", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindVariableDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindOperator", {
  link = "CmpItemKindOperatorDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconRockyLinux", {
  ctermfg = 36,
  fg = "#0fb37d"
})
vim.api.nvim_set_hl(ns_id, "DevIconMageia", {
  ctermfg = 67,
  fg = "#2397d4"
})
vim.api.nvim_set_hl(ns_id, "DevIconArcoLinux", {
  ctermfg = 68,
  fg = "#6690eb"
})
vim.api.nvim_set_hl(ns_id, "DevIconSabayon", {
  ctermfg = 251,
  fg = "#c6c6c6"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyc", {
  ctermfg = 222,
  fg = "#ffe291"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXLE", {
  ctermfg = 238,
  fg = "#474747"
})
vim.api.nvim_set_hl(ns_id, "DevIconArchlabs", {
  ctermfg = 238,
  fg = "#503f42"
})
vim.api.nvim_set_hl(ns_id, "DevIconD", {
  ctermfg = 28,
  fg = "#427819"
})
vim.api.nvim_set_hl(ns_id, "DevIconSlackware", {
  ctermfg = 61,
  fg = "#475fa9"
})
vim.api.nvim_set_hl(ns_id, "DevIconRedhat", {
  ctermfg = 196,
  fg = "#ee0000"
})
vim.api.nvim_set_hl(ns_id, "DevIconLocOS", {
  ctermfg = 214,
  fg = "#fab402"
})
vim.api.nvim_set_hl(ns_id, "DevIconTrisquelGNULinux", {
  ctermfg = 25,
  fg = "#0f58b6"
})
vim.api.nvim_set_hl(ns_id, "DevIconBudgie", {
  ctermfg = 240,
  fg = "#4e5361"
})
vim.api.nvim_set_hl(ns_id, "DevIconTails", {
  ctermfg = 54,
  fg = "#56347c"
})
vim.api.nvim_set_hl(ns_id, "DevIconTerraform", {
  ctermfg = 93,
  fg = "#5f43e9"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindValueDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "DevIconElf", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "NvimSurroundHighlight", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "MiniIconsGreen", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsGrey", {})
vim.api.nvim_set_hl(ns_id, "DevIconKubuntu", {
  ctermfg = 32,
  fg = "#007ac2"
})
vim.api.nvim_set_hl(ns_id, "MiniIconsOrange", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsPurple", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsRed", {})
vim.api.nvim_set_hl(ns_id, "WhichKeySeparator", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "DevIconDevuan", {
  ctermfg = 238,
  fg = "#404a52"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyGroup", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyDesc", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "DevIconLinux", {
  ctermfg = 231,
  fg = "#fdfdfb"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconBlue", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconCyan", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconGreen", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconPurple", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "DevIconCts", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconPuppyLinux", {
  ctermfg = 145,
  fg = "#a2aeb9"
})
vim.api.nvim_set_hl(ns_id, "DevIconPop_OS", {
  ctermfg = 73,
  fg = "#48b9c7"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconYellow", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindPropertyDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindProperty", {
  link = "CmpItemKindPropertyDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFileDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFile", {
  link = "CmpItemKindFileDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconSketchUp", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconDeepin", {
  ctermfg = 39,
  fg = "#2ca7f8"
})
vim.api.nvim_set_hl(ns_id, "DevIconMpv", {
  ctermfg = 53,
  fg = "#3b1342"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnum", {
  link = "CmpItemKindEnumDefault"
})
vim.api.nvim_set_hl(ns_id, "FoldColumn", {
  link = "SignColumn"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindModuleDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindModule", {
  link = "CmpItemKindModuleDefault"
})
vim.api.nvim_set_hl(ns_id, "DevIconWindows", {
  ctermfg = 39,
  fg = "#00a4ef"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstantDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumMember", {
  link = "CmpItemKindEnumMemberDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindStructDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryMinus", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimConcat", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTypeParameterDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyd", {
  ctermfg = 222,
  fg = "#ffe291"
})
vim.api.nvim_set_hl(ns_id, "DevIcondwm", {
  ctermfg = 31,
  fg = "#1177aa"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindInterfaceDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteVirtLnInLine", {
  link = "GitSignsDeleteLnInline"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteLnInline", {
  link = "GitSignsDeleteInline"
})
vim.api.nvim_set_hl(ns_id, "NvimOr", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "GitGutterDeleteLine", {})
vim.api.nvim_set_hl(ns_id, "NvimAnd", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconDebian", {
  ctermfg = 88,
  fg = "#a80030"
})
vim.api.nvim_set_hl(ns_id, "NvimMultiplication", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimDivision", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeLnInline", {
  link = "GitSignsChangeInline"
})
vim.api.nvim_set_hl(ns_id, "NvimMod", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimTernary", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddLnInline", {
  link = "GitSignsAddInline"
})
vim.api.nvim_set_hl(ns_id, "DevIconImportConfiguration", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconAsciinema", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "TermCursor", {
  cterm = {
    reverse = true
  },
  reverse = true
})
vim.api.nvim_set_hl(ns_id, "DevIconGroovy", {
  ctermfg = 24,
  fg = "#4a687c"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFunctionDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimParenthesis", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "GitSignsCurrentLineBlame", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "NvimLambda", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFunction", {
  link = "CmpItemKindFunctionDefault"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeletePreview", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrystalLinux", {
  ctermfg = 129,
  fg = "#a900ff"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddPreview", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "NvimNestingParenthesis", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "SignifyLineAdd", {})
vim.api.nvim_set_hl(ns_id, "NvimCallingParenthesis", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscript", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "VisualNC", {})
vim.api.nvim_set_hl(ns_id, "DevIconawesome", {
  ctermfg = 59,
  fg = "#535d6c"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEvent", {
  link = "CmpItemKindEventDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindOperatorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindVariable", {
  link = "CmpItemKindVariableDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindUnitDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "WildMenu", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "NvimCurly", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "SignifyLineChange", {})
vim.api.nvim_set_hl(ns_id, "DevIconBlender", {
  ctermfg = 208,
  fg = "#ea7600"
})
vim.api.nvim_set_hl(ns_id, "NvimDict", {
  link = "NvimContainer"
})
vim.api.nvim_set_hl(ns_id, "Folded", {
  bg = "NvimDarkGrey3",
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindKeywordDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindKeyword", {
  link = "CmpItemKindKeywordDefault"
})
vim.api.nvim_set_hl(ns_id, "GitGutterDeleteLineNr", {})
vim.api.nvim_set_hl(ns_id, "NvimList", {
  link = "NvimContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindColorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierScope", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindColor", {
  link = "CmpItemKindColorDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindReference", {
  link = "CmpItemKindReferenceDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFolderDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "None", {})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierScopeDelimiter", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "Removed", {
  ctermfg = 9,
  fg = "NvimLightRed"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierKey", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimColon", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "DiffRemovedGutter", {})
vim.api.nvim_set_hl(ns_id, "NvimComma", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimArrow", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimRegister", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "SignifySignChange", {})
vim.api.nvim_set_hl(ns_id, "NvimNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindSnippet", {
  link = "CmpItemKindSnippetDefault"
})
vim.api.nvim_set_hl(ns_id, "NvimFloat", {
  link = "NvimNumber"
})
vim.api.nvim_set_hl(ns_id, "Added", {
  ctermfg = 10,
  fg = "NvimLightGreen"
})
vim.api.nvim_set_hl(ns_id, "GitGutterAdd", {})
vim.api.nvim_set_hl(ns_id, "SignifySignAdd", {})
vim.api.nvim_set_hl(ns_id, "DiffAddedGutter", {})
vim.api.nvim_set_hl(ns_id, "NvimNumberPrefix", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTextDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionSigil", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionScope", {
  link = "NvimIdentifierScope"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindText", {
  link = "CmpItemKindTextDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstructorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstructor", {
  link = "CmpItemKindConstructorDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFieldDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionScopeDelimiter", {
  link = "NvimIdentifierScopeDelimiter"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindField", {
  link = "CmpItemKindFieldDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindMethodDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindClass", {
  link = "CmpItemKindClassDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemMenuDefault", {})
vim.api.nvim_set_hl(ns_id, "SpellCap", {
  cterm = {
    undercurl = true
  },
  sp = "NvimLightYellow",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAdd", {
  fg = "#597b60"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindDefault", {
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKind", {
  link = "CmpItemKindDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchFuzzyDefault", {})
vim.api.nvim_set_hl(ns_id, "NvimEnvironmentName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatch", {
  link = "CmpItemAbbrMatchDefault"
})
vim.api.nvim_set_hl(ns_id, "NvimStringBody", {
  link = "NvimString"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDeprecatedDefault", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "GitGutterChangeLine", {})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDefault", {})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteCul", {
  link = "GitSignsDelete"
})
vim.api.nvim_set_hl(ns_id, "VertSplit", {
  link = "WinSeparator"
})
vim.api.nvim_set_hl(ns_id, "NvimStringSpecial", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuote", {
  link = "NvimStringQuote"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewLink", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewRead", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "DevIconCentos", {
  ctermfg = 132,
  fg = "#a2518d"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSize", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedBody", {
  link = "NvimStringBody"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsConstant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsFunction", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "Method", {})
vim.api.nvim_set_hl(ns_id, "TelescopePromptCounter", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedQuote", {
  link = "NvimStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsVariable", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "TelescopeMatching", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "MsgArea", {})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsSpecialComment", {
  link = "SpecialComment"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffDelete", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewPipe", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "TelescopeTitle", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "GitSignsVirtLnum", {
  link = "GitSignsDeleteVirtLn"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteVirtLn", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "SignifyLineDelete", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeCul", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "Normal", {
  bg = "NvimDarkGrey2",
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteLn", {
  bg = "#4f5258",
  fg = "#77787c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeLn", {
  bg = "#4f5258",
  fg = "#77787c"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeNr", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedelete", {
  fg = "#467c7b"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDelete", {
  fg = "#7f605c"
})
vim.api.nvim_set_hl(ns_id, "CmpItemMenu", {
  link = "CmpItemMenuDefault"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntrackedCul", {
  link = "GitSignsAddCul"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteCul", {
  link = "GitSignsDeleteCul"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbr", {
  link = "CmpItemAbbrDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDeprecated", {
  link = "CmpItemAbbrDeprecatedDefault"
})
vim.api.nvim_set_hl(ns_id, "GitGutterAddLine", {})
vim.api.nvim_set_hl(ns_id, "GitSignsAddLn", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteNr", {
  link = "GitSignsDeleteNr"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangedeleteNr", {
  link = "GitSignsChangeNr"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteNr", {
  link = "GitSignsDelete"
})
vim.api.nvim_set_hl(ns_id, "GitGutterChangeLineNr", {})
vim.api.nvim_set_hl(ns_id, "GitGutterAddLineNr", {})
vim.api.nvim_set_hl(ns_id, "GitSignsAddNr", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "DevIconLuaurc", {
  ctermfg = 75,
  fg = "#00a2ff"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntracked", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdelete", {
  link = "GitSignsDelete"
})
vim.api.nvim_set_hl(ns_id, "SignifySignDelete", {})
vim.api.nvim_set_hl(ns_id, "GitGutterDelete", {})
vim.api.nvim_set_hl(ns_id, "GitSignsDelete", {
  link = "Removed"
})
vim.api.nvim_set_hl(ns_id, "DiffModifiedGutter", {})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadFootprintTable", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "GitGutterChange", {})
vim.api.nvim_set_hl(ns_id, "GitSignsAdd", {
  link = "Added"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidFloat", {
  link = "NvimInvalidNumber"
})
vim.api.nvim_set_hl(ns_id, "MsgSeparator", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "OilPurge", {
  link = "OilDelete"
})
vim.api.nvim_set_hl(ns_id, "OilRestore", {
  link = "OilCreate"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadCache", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconGTK", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "@markup.italic", {
  cterm = {
    italic = true
  },
  italic = true
})
vim.api.nvim_set_hl(ns_id, "DevIconRar", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitlabCI", {
  ctermfg = 196,
  fg = "#e24329"
})
vim.api.nvim_set_hl(ns_id, "ColorColumn", {
  bg = "NvimDarkGrey4",
  cterm = {
    reverse = true
  }
})
vim.api.nvim_set_hl(ns_id, "DevIconAudioInterchangeFileFormat", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidRegister", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NormalNC", {})
vim.api.nvim_set_hl(ns_id, "OilLinkTarget", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarningIcon", {})
vim.api.nvim_set_hl(ns_id, "DevIconAzureCli", {
  ctermfg = 32,
  fg = "#0078d4"
})
vim.api.nvim_set_hl(ns_id, "OilDirIcon", {
  link = "OilDir"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscriptBracket", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "MultiCursor", {
  link = "VM_Cursor"
})
vim.api.nvim_set_hl(ns_id, "DevIconGemspec", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "VM_Insert", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "DevIconVim", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotTextScene", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconVsix", {
  ctermfg = 98,
  fg = "#854cc7"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotTextResource", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitBlameIgnore", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconConf", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconTex", {
  ctermfg = 22,
  fg = "#3d6117"
})
vim.api.nvim_set_hl(ns_id, "DevIconFIGletFontFormat", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconXpi", {
  ctermfg = 196,
  fg = "#ff1b01"
})
vim.api.nvim_set_hl(ns_id, "DevIconXcLocalization", {
  ctermfg = 31,
  fg = "#2596be"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradle", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconVRML", {
  ctermfg = 102,
  fg = "#888888"
})
vim.api.nvim_set_hl(ns_id, "DevIconEslintIgnore", {
  ctermfg = 56,
  fg = "#4b32c3"
})
vim.api.nvim_set_hl(ns_id, "DevIconTsx", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconFIGletFontControl", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeLosslessAudioCodec", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconXz", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconTor", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScriptSetup", {
  ctermfg = 208,
  fg = "#ff8700"
})
vim.api.nvim_set_hl(ns_id, "DevIconAss", {
  ctermfg = 214,
  fg = "#ffb713"
})
vim.api.nvim_set_hl(ns_id, "DevIconEslintrc", {
  ctermfg = 56,
  fg = "#4b32c3"
})
vim.api.nvim_set_hl(ns_id, "DevIconAsc", {
  ctermfg = 242,
  fg = "#576d7f"
})
vim.api.nvim_set_hl(ns_id, "DevIconFdmdownload", {
  ctermfg = 43,
  fg = "#44cda8"
})
vim.api.nvim_set_hl(ns_id, "DevIconDb", {
  ctermfg = 188,
  fg = "#dad8d8"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoMod", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptDeclaration", {
  ctermfg = 172,
  fg = "#d59855"
})
vim.api.nvim_set_hl(ns_id, "DevIconDconf", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconcudah", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidity", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconQt", {
  ctermfg = 77,
  fg = "#40cd52"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeCAD", {
  ctermfg = 160,
  fg = "#cb333b"
})
vim.api.nvim_set_hl(ns_id, "DevIconSuo", {
  ctermfg = 98,
  fg = "#854cc7"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDelimiter", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "CursorIM", {
  link = "Cursor"
})
vim.api.nvim_set_hl(ns_id, "lCursor", {
  bg = "fg",
  fg = "bg"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryMinus", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticError", {
  ctermfg = 9,
  fg = "NvimLightRed"
})
vim.api.nvim_set_hl(ns_id, "DevIconTrueTypeFont", {
  ctermfg = 255,
  fg = "#ececec"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScriptConfig", {
  ctermfg = 208,
  fg = "#ff8700"
})
vim.api.nvim_set_hl(ns_id, "Delimiter", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscriptColon", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "DevIconArtix", {
  ctermfg = 38,
  fg = "#41b4d7"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuotedBody", {
  link = "NvimInvalidStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuote", {
  link = "NvimInvalidStringQuote"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyx", {
  ctermfg = 39,
  fg = "#5aa7e4"
})
vim.api.nvim_set_hl(ns_id, "DevIcon3DObjectFile", {
  ctermfg = 102,
  fg = "#888888"
})
vim.api.nvim_set_hl(ns_id, "FloatFooter", {
  link = "FloatTitle"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringBody", {
  link = "NvimStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidString", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionScopeDelimiter", {
  link = "NvimInvalidIdentifierScopeDelimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorLineNr", {
  link = "CursorLineNr"
})
vim.api.nvim_set_hl(ns_id, "DevIconVerilog", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "DevIconHurl", {
  ctermfg = 198,
  fg = "#ff0288"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidTernary", {
  link = "NvimInvalidOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "OilTrashSourcePath", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNumber", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "OilDelete", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "OilTrash", {
  link = "OilDelete"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyw", {
  ctermfg = 39,
  fg = "#5aa7e4"
})
vim.api.nvim_set_hl(ns_id, "DevIconMdx", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconBashProfile", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "OilCreate", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DevIconHuff", {
  ctermfg = 56,
  fg = "#4242c7"
})
vim.api.nvim_set_hl(ns_id, "DevIconWeston", {
  ctermfg = 214,
  fg = "#ffbb01"
})
vim.api.nvim_set_hl(ns_id, "OilChange", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconBicep", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "OilCopy", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "DevIconCxxm", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "OilMove", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "CursorLineSign", {
  link = "SignColumn"
})
vim.api.nvim_set_hl(ns_id, "DevIconBabelrc", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconMobi", {
  ctermfg = 215,
  fg = "#eab16d"
})
vim.api.nvim_set_hl(ns_id, "DevIconcuda", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugClear", {
  bg = "NvimDarkYellow",
  ctermbg = 11,
  ctermfg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconCodeOfConduct", {
  ctermfg = 161,
  fg = "#e41662"
})
vim.api.nvim_set_hl(ns_id, "DevIconPy.typed", {
  ctermfg = 214,
  fg = "#ffbc03"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDict", {
  link = "NvimInvalidContainer"
})
vim.api.nvim_set_hl(ns_id, "OilSocket", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "LineNrAbove", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "OilDir", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "DevIconCMakeLists", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconJsx", {
  ctermfg = 45,
  fg = "#20c2e3"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscript", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconIco", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNestingParenthesis", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconPxi", {
  ctermfg = 39,
  fg = "#5aa7e4"
})
vim.api.nvim_set_hl(ns_id, "DevIconTxz", {
  ctermfg = 214,
  fg = "#eca517"
})
vim.api.nvim_set_hl(ns_id, "DevIconZigObjectNotation", {
  ctermfg = 172,
  fg = "#f69a1b"
})
vim.api.nvim_set_hl(ns_id, "NvimEnvironmentSigil", {
  link = "NvimOptionSigil"
})
vim.api.nvim_set_hl(ns_id, "DevIconnode", {
  ctermfg = 71,
  fg = "#5fa04e"
})
vim.api.nvim_set_hl(ns_id, "NvimConcatOrSubscript", {
  link = "NvimConcat"
})
vim.api.nvim_set_hl(ns_id, "PreCondit", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "StorageClass", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "Structure", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "DevIconBinaryGLTF", {
  ctermfg = 214,
  fg = "#ffb13b"
})
vim.api.nvim_set_hl(ns_id, "DevIconMXLinux", {
  ctermfg = 231,
  fg = "#ffffff"
})
vim.api.nvim_set_hl(ns_id, "DevIconParabolaGNULinuxLibre", {
  ctermfg = 103,
  fg = "#797dac"
})
vim.api.nvim_set_hl(ns_id, "Typedef", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "SpecialKey", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "DevIconSpecTs", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "SpecialComment", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleBuildScript", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconHrl", {
  ctermfg = 163,
  fg = "#b83998"
})
vim.api.nvim_set_hl(ns_id, "Debug", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconMOV", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "DevIconopenSUSE", {
  ctermfg = 70,
  fg = "#6fb424"
})
vim.api.nvim_set_hl(ns_id, "Ignore", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "LspCodeLens", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "LspCodeLensSeparator", {
  link = "LspCodeLens"
})
vim.api.nvim_set_hl(ns_id, "DevIconDropbox", {
  ctermfg = 27,
  fg = "#0061fe"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextError", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsScriptfile", {
  ctermfg = 68,
  fg = "#4273ca"
})
vim.api.nvim_set_hl(ns_id, "SpecialChar", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "CurSearch", {
  bg = "NvimLightYellow",
  ctermbg = 11,
  ctermfg = 0,
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "PmenuKind", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "PmenuKindSel", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "DevIconBSPWM", {
  ctermfg = 239,
  fg = "#4f4f4f"
})
vim.api.nvim_set_hl(ns_id, "PmenuExtra", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "SnippetTabstop", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "PmenuExtraSel", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "FloatTitle", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "PmenuThumb", {
  bg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "DevIconHpp", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconHh", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconMakefile", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconDoc", {
  ctermfg = 26,
  fg = "#185abd"
})
vim.api.nvim_set_hl(ns_id, "NvimStringQuote", {
  link = "NvimString"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsManifestfile", {
  ctermfg = 68,
  fg = "#6975c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconToml", {
  ctermfg = 124,
  fg = "#9c4221"
})
vim.api.nvim_set_hl(ns_id, "DevIconYml", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignWarn", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscriptBracket", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "DevIconCson", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconCp", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshrc", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconBmp", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshenv", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojure", {
  ctermfg = 113,
  fg = "#8dc149"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshprofile", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconXsession", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitMergeIcon", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitNewIcon", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "PmenuSbar", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "TabLine", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "Number", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "Keyword", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleWrapperScript", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "@variable.parameter.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconVanillaOS", {
  ctermfg = 214,
  fg = "#fabd4d"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileDirty", {})
vim.api.nvim_set_hl(ns_id, "Title", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "DevIconExs", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "DevIconFusion360", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.property", {
  link = "@property"
})
vim.api.nvim_set_hl(ns_id, "Error", {
  bg = "NvimDarkRed",
  ctermbg = 9,
  ctermfg = 0,
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuotedEscape", {
  link = "NvimInvalidStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.method", {
  link = "@function.method"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileNewHL", {
  link = "NvimTreeGitNewIcon"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineHint", {
  cterm = {
    underline = true
  },
  sp = "NvimLightBlue",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DevIconStaticLibraryArchive", {
  ctermfg = 253,
  fg = "#dcddd6"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileRenamedHL", {
  link = "NvimTreeGitRenamedIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTernaryColon", {
  link = "NvimTernary"
})
vim.api.nvim_set_hl(ns_id, "@keyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "@comment.todo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderDeletedHL", {
  link = "NvimTreeGitFileDeletedHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderDirty", {})
vim.api.nvim_set_hl(ns_id, "DevIconTestTs", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "@comment.warning", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "Function", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderIgnoredHL", {
  link = "NvimTreeGitFileIgnoredHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderMerge", {})
vim.api.nvim_set_hl(ns_id, "@character", {
  link = "Character"
})
vim.api.nvim_set_hl(ns_id, "@string.special.url", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "@string.escape", {
  link = "@string.special"
})
vim.api.nvim_set_hl(ns_id, "DevIconEdn", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderRenamed", {})
vim.api.nvim_set_hl(ns_id, "DevIconJavaScriptReactTest", {
  ctermfg = 45,
  fg = "#20c2e3"
})
vim.api.nvim_set_hl(ns_id, "@string.special", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "@string", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "@label", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsError", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorIcon", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "@module.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@module", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "DevIconGentooBuild", {
  ctermfg = 60,
  fg = "#4c416e"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformation", {})
vim.api.nvim_set_hl(ns_id, "@constant.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@constant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "@variable.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsErrorText", {})
vim.api.nvim_set_hl(ns_id, "@variable", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "DevIconTestJs", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintFolderHL", {
  link = "NvimTreeDiagnosticHintFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnFileHL", {
  link = "DiagnosticUnderlineWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformationText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoFolderHL", {
  link = "NvimTreeDiagnosticInfoFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformationFolderText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnFolderHL", {
  link = "NvimTreeDiagnosticWarnFileHL"
})
vim.api.nvim_set_hl(ns_id, "DevIconEbook", {
  ctermfg = 215,
  fg = "#eab16d"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHintFolderText", {})
vim.api.nvim_set_hl(ns_id, "DevIconAutoCADDxf", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconAutoCADDwg", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconTcl", {
  ctermfg = 25,
  fg = "#1e5cb3"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarningFolderText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorFolderHL", {
  link = "NvimTreeDiagnosticErrorFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsErrorFolderText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintFileHL", {
  link = "DiagnosticUnderlineHint"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHintText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoFileHL", {
  link = "DiagnosticUnderlineInfo"
})
vim.api.nvim_set_hl(ns_id, "DevIconDownload", {
  ctermfg = 43,
  fg = "#44cda8"
})
vim.api.nvim_set_hl(ns_id, "DevIconSystemVerilog", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarningText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorFileHL", {
  link = "DiagnosticUnderlineError"
})
vim.api.nvim_set_hl(ns_id, "DevIconAlpine", {
  ctermfg = 24,
  fg = "#0d597f"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintIcon", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHint", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoIcon", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DevIconR", {
  ctermfg = 25,
  fg = "#2266ba"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnIcon", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarning", {})
vim.api.nvim_set_hl(ns_id, "DevIconHyprland", {
  ctermfg = 37,
  fg = "#00aaae"
})
vim.api.nvim_set_hl(ns_id, "DevIconElementary", {
  ctermfg = 67,
  fg = "#5890c2"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderStagedHL", {
  link = "NvimTreeGitFileStagedHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderStaged", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderRenamedHL", {
  link = "NvimTreeGitFileRenamedHL"
})
vim.api.nvim_set_hl(ns_id, "DevIconDockerfile", {
  ctermfg = 68,
  fg = "#458ee6"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderNewHL", {
  link = "NvimTreeGitFileNewHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderNew", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderMergeHL", {
  link = "NvimTreeGitFileMergeHL"
})
vim.api.nvim_set_hl(ns_id, "DevIconSsa", {
  ctermfg = 214,
  fg = "#ffb713"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptReactSpec", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderIgnored", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderDirtyHL", {
  link = "NvimTreeGitFileDirtyHL"
})
vim.api.nvim_set_hl(ns_id, "DevIconDiff", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "TermCursorNC", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderDeleted", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileStagedHL", {
  link = "NvimTreeGitStagedIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileStaged", {})
vim.api.nvim_set_hl(ns_id, "DevIconFluxbox", {
  ctermfg = 240,
  fg = "#555555"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileRenamed", {})
vim.api.nvim_set_hl(ns_id, "DevIconPrisma", {
  ctermfg = 62,
  fg = "#5a67d8"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileNew", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileMergeHL", {
  link = "NvimTreeGitMergeIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileMerge", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileIgnoredHL", {
  link = "NvimTreeGitIgnoredIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileIgnored", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileDirtyHL", {
  link = "NvimTreeGitDirtyIcon"
})
vim.api.nvim_set_hl(ns_id, "DevIconReScriptInterface", {
  ctermfg = 204,
  fg = "#f55385"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileDeletedHL", {
  link = "NvimTreeGitDeletedIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileDeleted", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitStagedIcon", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitStaged", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitRenamedIcon", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitRenamed", {})
vim.api.nvim_set_hl(ns_id, "DevIconJson", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitNew", {})
vim.api.nvim_set_hl(ns_id, "DevIconLiquid", {
  ctermfg = 106,
  fg = "#95bf47"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitMerge", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitIgnoredIcon", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitIgnored", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDirtyIcon", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDirty", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDeletedIcon", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconJustfile", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconStp", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "NormalFloat", {
  bg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "DevIconSass", {
  ctermfg = 204,
  fg = "#f55385"
})
vim.api.nvim_set_hl(ns_id, "DevIconXls", {
  ctermfg = 29,
  fg = "#207245"
})
vim.api.nvim_set_hl(ns_id, "DevIconRs", {
  ctermfg = 216,
  fg = "#dea584"
})
vim.api.nvim_set_hl(ns_id, "DevIconIonic", {
  ctermfg = 33,
  fg = "#4f8ff7"
})
vim.api.nvim_set_hl(ns_id, "DevIconCantorrc", {
  ctermfg = 32,
  fg = "#1c99f3"
})
vim.api.nvim_set_hl(ns_id, "DevIconCppm", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconIso", {
  ctermfg = 181,
  fg = "#d0bec8"
})
vim.api.nvim_set_hl(ns_id, "NvimNot", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "DevIconsbt", {
  ctermfg = 167,
  fg = "#cc3e44"
})
vim.api.nvim_set_hl(ns_id, "DevIconVlang", {
  ctermfg = 67,
  fg = "#5d87bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconLocalization", {
  ctermfg = 31,
  fg = "#2596be"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeCADConfig", {
  ctermfg = 160,
  fg = "#cb333b"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleSettings", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconSpecJs", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconKalgebrarc", {
  ctermfg = 32,
  fg = "#1c99f3"
})
vim.api.nvim_set_hl(ns_id, "DevIconPy", {
  ctermfg = 214,
  fg = "#ffbc03"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectiveC", {
  ctermfg = 111,
  fg = "#599eff"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebpack", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenFileHL", {
  link = "NvimTreeHiddenIcon"
})
vim.api.nvim_set_hl(ns_id, "PreProc", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticHint", {
  ctermfg = 12,
  fg = "NvimLightBlue"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDeleted", {})
vim.api.nvim_set_hl(ns_id, "DevIconStep", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconElisp", {
  ctermfg = 97,
  fg = "#8172be"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyo", {
  ctermfg = 222,
  fg = "#ffe291"
})
vim.api.nvim_set_hl(ns_id, "Identifier", {
  ctermfg = 12,
  fg = "NvimLightBlue"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolveSpace", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazelWorkspace", {
  ctermfg = 113,
  fg = "#89e051"
})
vim.api.nvim_set_hl(ns_id, "DevIconLib", {
  ctermfg = 52,
  fg = "#4d2c0b"
})
vim.api.nvim_set_hl(ns_id, "DevIconHtml", {
  ctermfg = 196,
  fg = "#e44d26"
})
vim.api.nvim_set_hl(ns_id, "DevIconNswag", {
  ctermfg = 112,
  fg = "#85ea2d"
})
vim.api.nvim_set_hl(ns_id, "DevIconSte", {
  ctermfg = 101,
  fg = "#839463"
})
vim.api.nvim_set_hl(ns_id, "DevIconSln", {
  ctermfg = 98,
  fg = "#854cc7"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeStatusLineNC", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeRootFolder", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignError", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "LineNrBelow", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "DevIconNix", {
  ctermfg = 110,
  fg = "#7ebae4"
})
vim.api.nvim_set_hl(ns_id, "DevIconVoid", {
  ctermfg = 23,
  fg = "#295340"
})
vim.api.nvim_set_hl(ns_id, "DevIconSql", {
  ctermfg = 188,
  fg = "#dad8d8"
})
vim.api.nvim_set_hl(ns_id, "TabLineSel", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "DevIconMojo", {
  ctermfg = 196,
  fg = "#ff4c1f"
})
vim.api.nvim_set_hl(ns_id, "TabLineFill", {
  link = "TabLine"
})
vim.api.nvim_set_hl(ns_id, "DevIconMjs", {
  ctermfg = 185,
  fg = "#f1e05a"
})
vim.api.nvim_set_hl(ns_id, "DevIconPulseCodeModulation", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconCpp", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconPatch", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "DevIconAdvancedAudioCoding", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconYaml", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconOut", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconOrgMode", {
  ctermfg = 73,
  fg = "#77aa99"
})
vim.api.nvim_set_hl(ns_id, "DevIconXorgConf", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "DevIconxmonad", {
  ctermfg = 203,
  fg = "#fd4d5d"
})
vim.api.nvim_set_hl(ns_id, "QuickFixLine", {
  ctermfg = 14,
  fg = "NvimLightCyan"
})
vim.api.nvim_set_hl(ns_id, "DevIconTSConfig", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconCxx", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconCMake", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconOggVorbis", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconStyl", {
  ctermfg = 113,
  fg = "#8dc149"
})
vim.api.nvim_set_hl(ns_id, "DevIconCPlusPlusModule", {
  ctermfg = 204,
  fg = "#f34b7d"
})
vim.api.nvim_set_hl(ns_id, "DevIconSublime", {
  ctermfg = 166,
  fg = "#e37933"
})
vim.api.nvim_set_hl(ns_id, "@lsp.mod.deprecated", {
  link = "DiagnosticDeprecated"
})
vim.api.nvim_set_hl(ns_id, "DevIconHs", {
  ctermfg = 140,
  fg = "#a074c4"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.regexp", {
  link = "@string.regexp"
})
vim.api.nvim_set_hl(ns_id, "NvimContainer", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconCs", {
  ctermfg = 58,
  fg = "#596706"
})
vim.api.nvim_set_hl(ns_id, "DevIconCheckhealth", {
  ctermfg = 75,
  fg = "#75b4fb"
})
vim.api.nvim_set_hl(ns_id, "DevIconLua", {
  ctermfg = 74,
  fg = "#51a0cf"
})
vim.api.nvim_set_hl(ns_id, "NonText", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "CursorLineFold", {
  link = "FoldColumn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLineNr", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "EndOfBuffer", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "NvimTreePopup", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "DevIconGemfile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitCommit", {
  ctermfg = 196,
  fg = "#f54d27"
})
vim.api.nvim_set_hl(ns_id, "DevIconBrewfile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconBQN", {
  ctermfg = 23,
  fg = "#2b7067"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeEmptyFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeWindowPicker", {
  bg = "#4493c8",
  bold = true,
  ctermbg = 4,
  ctermfg = 15,
  fg = "#ededed"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLiveFilterPrefix", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "ModeMsg", {
  ctermfg = 10,
  fg = "NvimLightGreen"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeBookmarkHL", {
  link = "SpellLocal"
})
vim.api.nvim_set_hl(ns_id, "Type", {
  fg = "NvimLightGrey2"
})
vim.api.nvim_set_hl(ns_id, "DevIconJs", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconConfiguration", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconBibTeX", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "DevIconMts", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconThunderbird", {
  ctermfg = 33,
  fg = "#137be1"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXDEConfigFile", {
  ctermfg = 246,
  fg = "#909090"
})
vim.api.nvim_set_hl(ns_id, "DevIconApp", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconVimrc", {
  ctermfg = 28,
  fg = "#019833"
})
vim.api.nvim_set_hl(ns_id, "DevIconXauthority", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "DevIconEjs", {
  ctermfg = 185,
  fg = "#cbcb41"
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugNormal", {
  cterm = {
    reverse = true
  },
  reverse = true
})
vim.api.nvim_set_hl(ns_id, "DevIconFedora", {
  ctermfg = 17,
  fg = "#072a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconMpp", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconMp4", {
  ctermfg = 208,
  fg = "#fd971f"
})
vim.api.nvim_set_hl(ns_id, "DevIconXSettingsdConf", {
  ctermfg = 196,
  fg = "#e54d18"
})
vim.api.nvim_set_hl(ns_id, "DevIconMPEGAudioLayerIII", {
  ctermfg = 39,
  fg = "#00afff"
})
vim.api.nvim_set_hl(ns_id, "DevIconGo", {
  ctermfg = 74,
  fg = "#519aba"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectFile", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugRecompose", {
  bg = "NvimDarkRed",
  ctermbg = 9,
  ctermfg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconEnv", {
  ctermfg = 227,
  fg = "#faf743"
})
vim.api.nvim_set_hl(ns_id, "FloatShadow", {
  bg = "NvimDarkGrey4",
  blend = 80,
  ctermbg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconLibrecadFontFile", {
  ctermfg = 255,
  fg = "#ececec"
})