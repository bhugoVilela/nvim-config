local ns_id = 0
vim.o.termguicolors = true
vim.g.colors_name = "def_light_alt"
vim.api.nvim_set_hl(ns_id, "NvimSpacing", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedUnknownEscape", {
  link = "NvimInternalError"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalid", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceRead", {
  link = "LspReferenceText"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceText", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAugmentedAssignment", {
  link = "NvimInvalidAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignmentWithAddition", {
  link = "NvimInvalidAugmentedAssignment"
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
vim.api.nvim_set_hl(ns_id, "NvimInvalidUnaryPlus", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "@variable", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "@variable.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@variable.parameter.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconTxt", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComparisonModifier", {
  link = "NvimInvalidComparison"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryPlus", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "@module.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconErl", {
  ctermfg = 89,
  fg = "#8a2b72"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidConcatOrSubscript", {
  link = "NvimInvalidConcat"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOr", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "@string.special", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "@string.escape", {
  link = "@string.special"
})
vim.api.nvim_set_hl(ns_id, "@string.special.url", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "@character", {
  link = "Character"
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
vim.api.nvim_set_hl(ns_id, "@keyword", {
  link = "Keyword"
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
vim.api.nvim_set_hl(ns_id, "@comment.warning", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "@comment.note", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "@comment.todo", {
  link = "Todo"
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
vim.api.nvim_set_hl(ns_id, "@markup.italic", {
  cterm = {
    italic = true
  },
  italic = true
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidRegister", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNumber", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidFloat", {
  link = "NvimInvalidNumber"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNumberPrefix", {
  link = "NvimInvalidNumber"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionSigil", {
  link = "NvimInvalidIdentifier"
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
vim.api.nvim_set_hl(ns_id, "@lsp.type.method", {
  link = "@function.method"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.modifier", {
  link = "@type.qualifier"
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
vim.api.nvim_set_hl(ns_id, "@lsp.type.property", {
  link = "@property"
})
vim.api.nvim_set_hl(ns_id, "@lsp.type.regexp", {
  link = "@string.regexp"
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
vim.api.nvim_set_hl(ns_id, "@lsp.mod.deprecated", {
  link = "DiagnosticDeprecated"
})
vim.api.nvim_set_hl(ns_id, "TelescopeTitle", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopeNormal", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "VM_Mono", {
  link = "IncSearch"
})
vim.api.nvim_set_hl(ns_id, "VM_Cursor", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "VM_Extend", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "VM_Insert", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "MultiCursor", {})
vim.api.nvim_set_hl(ns_id, "DressingSelectIdx", {})
vim.api.nvim_set_hl(ns_id, "debugPC", {})
vim.api.nvim_set_hl(ns_id, "@ibl", {})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextChanged", {
  link = "DiagnosticVirtualTextWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextError", {
  link = "DiagnosticVirtualTextError"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualTextInfo", {
  link = "DiagnosticVirtualTextInfo"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFile", {
  link = "CmpItemKindFileDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFileDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindProperty", {
  link = "CmpItemKindPropertyDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindPropertyDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindText", {
  link = "CmpItemKindTextDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTextDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindSnippet", {
  link = "CmpItemKindSnippetDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindSnippetDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindClass", {
  link = "CmpItemKindClassDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindClassDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindReference", {
  link = "CmpItemKindReferenceDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindReferenceDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindField", {
  link = "CmpItemKindFieldDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFieldDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstructor", {
  link = "CmpItemKindConstructorDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstructorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstant", {
  link = "CmpItemKindConstantDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindConstantDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnum", {
  link = "CmpItemKindEnumDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumMember", {
  link = "CmpItemKindEnumMemberDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEnumMemberDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindModule", {
  link = "CmpItemKindModuleDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindModuleDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindStruct", {
  link = "CmpItemKindStructDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindStructDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindVariableDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFunction", {
  link = "CmpItemKindFunctionDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFunctionDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEvent", {
  link = "CmpItemKindEventDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindEventDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindOperator", {
  link = "CmpItemKindOperatorDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindOperatorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindInterface", {
  link = "CmpItemKindInterfaceDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindInterfaceDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTypeParameter", {
  link = "CmpItemKindTypeParameterDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindTypeParameterDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFolder", {
  link = "CmpItemKindFolderDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindFolderDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindValue", {
  link = "CmpItemKindValueDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindValueDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindColor", {
  link = "CmpItemKindColorDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindColorDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindMethod", {
  link = "CmpItemKindMethodDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindMethodDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindUnit", {
  link = "CmpItemKindUnitDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindUnitDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindKeyword", {
  link = "CmpItemKindKeywordDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindKeywordDefault", {
  link = "CmpItemKind"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconYellow", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconRed", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconPurple", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconOrange", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconGrey", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconGreen", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconCyan", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconBlue", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIconAzure", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyBorder", {
  link = "FloatBorder"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyNormal", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "MiniIconsYellow", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsRed", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsPurple", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsOrange", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsGrey", {})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsFunction", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsVariable", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsConstant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "MiniIcons", {})
vim.api.nvim_set_hl(ns_id, "TelescopePromptBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "Label", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "Repeat", {
  link = "Statement"
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
vim.api.nvim_set_hl(ns_id, "PreProc", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "Statement", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenDisplay", {
  link = "Conceal"
})
vim.api.nvim_set_hl(ns_id, "Conceal", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenFolderHL", {
  link = "NvimTreeHiddenFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeHiddenFileHL", {
  link = "NvimTreeHiddenIcon"
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
vim.api.nvim_set_hl(ns_id, "NvimTreeBookmarkHL", {
  link = "SpellLocal"
})
vim.api.nvim_set_hl(ns_id, "SpellLocal", {
  cterm = {
    undercurl = true
  },
  sp = "NvimDarkGreen",
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
  sp = "NvimDarkCyan",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCutHL", {
  link = "SpellBad"
})
vim.api.nvim_set_hl(ns_id, "SpellBad", {
  cterm = {
    undercurl = true
  },
  sp = "NvimDarkRed",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLiveFilterValue", {
  link = "ModeMsg"
})
vim.api.nvim_set_hl(ns_id, "ModeMsg", {
  ctermfg = 2,
  fg = "NvimDarkGreen"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLiveFilterPrefix", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrdownload", {
  ctermfg = 23,
  fg = "#226654"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptReactSpec", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconSpecTs", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCobol", {
  ctermfg = 25,
  fg = "#005ca5"
})
vim.api.nvim_set_hl(ns_id, "@type", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "DevIconCppm", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCowsayFile", {
  ctermfg = 94,
  fg = "#70421b"
})
vim.api.nvim_set_hl(ns_id, "DevIconConfigRu", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "Directory", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "DevIconFish", {
  ctermfg = 238,
  fg = "#3a4446"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureDart", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "Underlined", {
  cterm = {
    underline = true
  },
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureC", {
  ctermfg = 22,
  fg = "#466024"
})
vim.api.nvim_set_hl(ns_id, "DevIconCjs", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconCPlusPlusModule", {
  ctermfg = 125,
  fg = "#a23253"
})
vim.api.nvim_set_hl(ns_id, "CursorLineNr", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "DevIconDart", {
  ctermfg = 25,
  fg = "#03589c"
})
vim.api.nvim_set_hl(ns_id, "CursorLine", {
  bg = "#D5D7DD"
})
vim.api.nvim_set_hl(ns_id, "DevIconBicep", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "CursorColumn", {
  bg = "#D5D7DD"
})
vim.api.nvim_set_hl(ns_id, "DevIconZip", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconConf", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconTsx", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "EndOfBuffer", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "DevIconLuau", {
  ctermfg = 32,
  fg = "#007abf"
})
vim.api.nvim_set_hl(ns_id, "DevIconAstro", {
  ctermfg = 125,
  fg = "#aa2f4d"
})
vim.api.nvim_set_hl(ns_id, "DevIconCpp", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconYaml", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconVoid", {
  ctermfg = 23,
  fg = "#295340"
})
vim.api.nvim_set_hl(ns_id, "DevIconDiff", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "DevIconJson", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconVim", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "DevIconLua", {
  ctermfg = 24,
  fg = "#366b8a"
})
vim.api.nvim_set_hl(ns_id, "DevIconFs", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectiveC", {
  ctermfg = 25,
  fg = "#3b69aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconGruntfile", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleWrapperProperties", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleProperties", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconJavaScriptReactSpec", {
  ctermfg = 31,
  fg = "#158197"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleWrapperScript", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconTor", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoWork", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCue", {
  ctermfg = 95,
  fg = "#764a57"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoSum", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconMint", {
  ctermfg = 23,
  fg = "#44604a"
})
vim.api.nvim_set_hl(ns_id, "DevIconGoMod", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconC", {
  ctermfg = 25,
  fg = "#3b69aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconMdx", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconMd5", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCad", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitConfig", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadFootprintTable", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconMarkdown", {
  ctermfg = 239,
  fg = "#4a4a4a"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadCache", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconParabolaGNULinuxLibre", {
  ctermfg = 60,
  fg = "#515373"
})
vim.api.nvim_set_hl(ns_id, "DevIconFavicon", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconR", {
  ctermfg = 25,
  fg = "#1a4c8c"
})
vim.api.nvim_set_hl(ns_id, "DevIconArduino", {
  ctermfg = 30,
  fg = "#397981"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScriptSetup", {
  ctermfg = 130,
  fg = "#aa5a00"
})
vim.api.nvim_set_hl(ns_id, "DevIconLib", {
  ctermfg = 52,
  fg = "#4d2c0b"
})
vim.api.nvim_set_hl(ns_id, "DevIconEslintrc", {
  ctermfg = 56,
  fg = "#4b32c3"
})
vim.api.nvim_set_hl(ns_id, "DevIconMageia", {
  ctermfg = 24,
  fg = "#1a719f"
})
vim.api.nvim_set_hl(ns_id, "DevIconLogos", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconDockerfile", {
  ctermfg = 25,
  fg = "#2e5f99"
})
vim.api.nvim_set_hl(ns_id, "DevIconCommitlintConfig", {
  ctermfg = 23,
  fg = "#207067"
})
vim.api.nvim_set_hl(ns_id, "@spell", {})
vim.api.nvim_set_hl(ns_id, "DevIconAwk", {
  ctermfg = 238,
  fg = "#3a4446"
})
vim.api.nvim_set_hl(ns_id, "DevIconEex", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconKali", {
  ctermfg = 26,
  fg = "#1d59bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshprofile", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconCodeOfConduct", {
  ctermfg = 125,
  fg = "#ab104a"
})
vim.api.nvim_set_hl(ns_id, "DevIconXsession", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "DevIconTerminal", {
  ctermfg = 28,
  fg = "#217929"
})
vim.api.nvim_set_hl(ns_id, "DevIconHs", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconCMakeLists", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconXInitrc", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "DevIconNodeModules", {
  ctermfg = 161,
  fg = "#ae1d38"
})
vim.api.nvim_set_hl(ns_id, "DevIconSettingsJson", {
  ctermfg = 91,
  fg = "#643995"
})
vim.api.nvim_set_hl(ns_id, "Changed", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "Error", {
  bg = "NvimLightRed",
  ctermbg = 1,
  ctermfg = 15,
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignHint", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignError", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignWarn", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "NvimSurroundHighlight", {
  link = "Visual"
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
  fg = "#9b9ea4",
  nocombine = true
})
vim.api.nvim_set_hl(ns_id, "@ibl.scope.underline.1", {
  cterm = {
    underline = true
  },
  sp = "#9b9ea4",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "Number", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "Title", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "DevIconMts", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconNswag", {
  ctermfg = 28,
  fg = "#427516"
})
vim.api.nvim_set_hl(ns_id, "DevIconOut", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitIgnore", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitAttributes", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconMp4", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconBicepParameters", {
  ctermfg = 96,
  fg = "#6a4d77"
})
vim.api.nvim_set_hl(ns_id, "DevIconBibTeX", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha384", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScriptConfig", {
  ctermfg = 130,
  fg = "#aa5a00"
})
vim.api.nvim_set_hl(ns_id, "DevIconDoc", {
  ctermfg = 26,
  fg = "#185abd"
})
vim.api.nvim_set_hl(ns_id, "DevIconDrools", {
  ctermfg = 238,
  fg = "#553a3a"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvg", {
  ctermfg = 94,
  fg = "#80581e"
})
vim.api.nvim_set_hl(ns_id, "DevIconcuda", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrystal", {
  ctermfg = 238,
  fg = "#434343"
})
vim.api.nvim_set_hl(ns_id, "DevIconYml", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconSway", {
  ctermfg = 58,
  fg = "#4e5815"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradle", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconConfiguration", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconRmd", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconQtile", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconSsa", {
  ctermfg = 94,
  fg = "#805c0a"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojure", {
  ctermfg = 22,
  fg = "#466024"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyo", {
  ctermfg = 236,
  fg = "#332d1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconRs", {
  ctermfg = 95,
  fg = "#6f5242"
})
vim.api.nvim_set_hl(ns_id, "DevIconScss", {
  ctermfg = 125,
  fg = "#a33759"
})
vim.api.nvim_set_hl(ns_id, "DevIconPdf", {
  ctermfg = 124,
  fg = "#b30b00"
})
vim.api.nvim_set_hl(ns_id, "DevIconHTTP", {
  ctermfg = 24,
  fg = "#006a95"
})
vim.api.nvim_set_hl(ns_id, "DevIconHurl", {
  ctermfg = 125,
  fg = "#bf0266"
})
vim.api.nvim_set_hl(ns_id, "DevIconCsh", {
  ctermfg = 238,
  fg = "#3a4446"
})
vim.api.nvim_set_hl(ns_id, "DevIconFluxbox", {
  ctermfg = 238,
  fg = "#404040"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcalendar", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcs", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconIfb", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "DevIconEnlightenment", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconIgs", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconImg", {
  ctermfg = 238,
  fg = "#453f43"
})
vim.api.nvim_set_hl(ns_id, "DevIcondwm", {
  ctermfg = 24,
  fg = "#0d5980"
})
vim.api.nvim_set_hl(ns_id, "DevIconMd", {
  ctermfg = 239,
  fg = "#4a4a4a"
})
vim.api.nvim_set_hl(ns_id, "DevIconGPRBuildProject", {
  ctermfg = 127,
  fg = "#aa22aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEneon", {
  ctermfg = 30,
  fg = "#187c7b"
})
vim.api.nvim_set_hl(ns_id, "DevIconLocOS", {
  ctermfg = 94,
  fg = "#7d5a01"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolus", {
  ctermfg = 239,
  fg = "#4b5163"
})
vim.api.nvim_set_hl(ns_id, "DevIconawesome", {
  ctermfg = 238,
  fg = "#3e4651"
})
vim.api.nvim_set_hl(ns_id, "DevIconRaspberryPiOS", {
  ctermfg = 161,
  fg = "#be1848"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenBSD", {
  ctermfg = 58,
  fg = "#514310"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXDE", {
  ctermfg = 239,
  fg = "#525252"
})
vim.api.nvim_set_hl(ns_id, "DevIconXfce", {
  ctermfg = 31,
  fg = "#0080a7"
})
vim.api.nvim_set_hl(ns_id, "DevIconPop_OS", {
  ctermfg = 30,
  fg = "#307b85"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEPlasma", {
  ctermfg = 25,
  fg = "#1467b7"
})
vim.api.nvim_set_hl(ns_id, "DevIconPuppyLinux", {
  ctermfg = 240,
  fg = "#51575c"
})
vim.api.nvim_set_hl(ns_id, "DevIconQubesOS", {
  ctermfg = 25,
  fg = "#2957a2"
})
vim.api.nvim_set_hl(ns_id, "DevIconWindows", {
  ctermfg = 67,
  fg = "#007bb3"
})
vim.api.nvim_set_hl(ns_id, "DevIconMATE", {
  ctermfg = 22,
  fg = "#4e6d2e"
})
vim.api.nvim_set_hl(ns_id, "OilTrashSourcePath", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "OilTrash", {
  link = "OilDelete"
})
vim.api.nvim_set_hl(ns_id, "OilDelete", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMessage", {
  link = "TelescopePreviewNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMessageFillchar", {
  link = "TelescopePreviewMessage"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_normal_to_lualine_b_normal", {
  bg = "#c9cbd2",
  fg = "#121318"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_normal_to_lualine_c_normal", {
  bg = "#27292d",
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "None", {})
vim.api.nvim_set_hl(ns_id, "WarningMsg", {
  ctermfg = 3,
  fg = "NvimDarkYellow"
})
vim.api.nvim_set_hl(ns_id, "GitSignsCurrentLineBlame", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "NonText", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeletePreview", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddPreview", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "GitGutterAddLine", {})
vim.api.nvim_set_hl(ns_id, "SignifyLineAdd", {})
vim.api.nvim_set_hl(ns_id, "GitGutterChangeLine", {})
vim.api.nvim_set_hl(ns_id, "SignifyLineChange", {})
vim.api.nvim_set_hl(ns_id, "GitGutterDeleteLineNr", {})
vim.api.nvim_set_hl(ns_id, "GitGutterChangeLineNr", {})
vim.api.nvim_set_hl(ns_id, "GitGutterAddLineNr", {})
vim.api.nvim_set_hl(ns_id, "Removed", {
  ctermfg = 1,
  fg = "NvimDarkRed"
})
vim.api.nvim_set_hl(ns_id, "SignifySignDelete", {})
vim.api.nvim_set_hl(ns_id, "DiffRemovedGutter", {})
vim.api.nvim_set_hl(ns_id, "SignifySignChange", {})
vim.api.nvim_set_hl(ns_id, "DiffModifiedGutter", {})
vim.api.nvim_set_hl(ns_id, "Added", {
  ctermfg = 2,
  fg = "NvimDarkGreen"
})
vim.api.nvim_set_hl(ns_id, "SignifySignAdd", {})
vim.api.nvim_set_hl(ns_id, "DiffAddedGutter", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsGreen", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsCyan", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsBlue", {})
vim.api.nvim_set_hl(ns_id, "MiniIconsAzure", {})
vim.api.nvim_set_hl(ns_id, "ToggleTerm1NormalFloat", {})
vim.api.nvim_set_hl(ns_id, "ToggleTerm1FloatBorder", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_insert_to_lualine_b_insert", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_insert_to_lualine_c_insert", {})
vim.api.nvim_set_hl(ns_id, "javaScriptCommentTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "javaScriptLineComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "javaScriptCommentSkip", {})
vim.api.nvim_set_hl(ns_id, "javaScriptComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "javaScriptSpecial", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "javaScriptStringD", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "javaScriptStringS", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "javaScriptEmbed", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "javaScriptStringT", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "javaScriptSpecialCharacter", {
  link = "javaScriptSpecial"
})
vim.api.nvim_set_hl(ns_id, "javaScriptNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "javaScriptRegexpString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "javaScriptConditional", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "javaScriptRepeat", {
  link = "Repeat"
})
vim.api.nvim_set_hl(ns_id, "javaScriptBranch", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "javaScriptOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "javaScriptType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "javaScriptStatement", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "javaScriptBoolean", {
  link = "Boolean"
})
vim.api.nvim_set_hl(ns_id, "javaScriptNull", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "javaScriptIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "javaScriptLabel", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "javaScriptException", {
  link = "Exception"
})
vim.api.nvim_set_hl(ns_id, "javaScriptMessage", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "javaScriptGlobal", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "javaScriptMember", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "javaScriptDeprecated", {
  link = "Exception"
})
vim.api.nvim_set_hl(ns_id, "javaScriptReserved", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_normal", {
  bg = "#121318",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "javaScriptBraces", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "javaScriptParens", {})
vim.api.nvim_set_hl(ns_id, "javaScriptCharacter", {
  link = "Character"
})
vim.api.nvim_set_hl(ns_id, "javaScriptError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "javaScrParenError", {
  link = "javaScriptError"
})
vim.api.nvim_set_hl(ns_id, "javaScriptDebug", {
  link = "Debug"
})
vim.api.nvim_set_hl(ns_id, "javaScriptConstant", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_normal", {
  bg = "#c9cbd2",
  fg = "#121318"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_replace", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_inactive", {})
vim.api.nvim_set_hl(ns_id, "oilId", {})
vim.api.nvim_set_hl(ns_id, "lualine_c_inactive", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_insert", {})
vim.api.nvim_set_hl(ns_id, "lualine_a_inactive", {
  bg = "#121318",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_inactive", {
  bg = "#c9cbd2",
  fg = "#121318"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_terminal", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_terminal", {
  bg = "#004467",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "WinBar", {
  bg = "NvimLightGrey1",
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "WinBarNC", {
  bg = "NvimLightGrey1",
  cterm = {
    bold = true
  },
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "SignColumn", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_terminal", {
  bg = "#c9cbd2",
  fg = "#004467"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_command", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_command", {
  bg = "#004467",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyGroup", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyTitle", {
  link = "FloatTitle"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_command", {
  bg = "#c9cbd2",
  fg = "#004467"
})
vim.api.nvim_set_hl(ns_id, "WhichKeySeparator", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_insert", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyDesc", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_insert", {
  bg = "#004c1f",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_insert", {
  bg = "#c9cbd2",
  fg = "#004c1f"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_replace", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_replace", {
  bg = "#121318",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_replace", {
  bg = "#c9cbd2",
  fg = "#121318"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_visual", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "lualine_a_visual", {
  bg = "#006767",
  bold = true,
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_visual", {
  bg = "#c9cbd2",
  fg = "#006767"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_hint_command_to_lualine_c_command", {
  bg = "#27292d",
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyValue", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "Tag", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "MoreMsg", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindVariable", {
  link = "CmpItemKindVariableDefault"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedelete", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteCul", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteLn", {
  bg = "#9b9ea4",
  fg = "#030406"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangedeleteNr", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdelete", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteCul", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedTopdeleteNr", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDelete", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteCul", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedDeleteNr", {
  fg = "#2c0004"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChange", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeCul", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeLn", {
  bg = "#9b9ea4",
  fg = "#030406"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedChangeNr", {
  fg = "#003939"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAdd", {
  fg = "#002a11"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddCul", {
  fg = "#002a11"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddLn", {
  bg = "#b3f6c0",
  fg = "#030406"
})
vim.api.nvim_set_hl(ns_id, "GitSignsStagedAddNr", {
  fg = "#002a11"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntracked", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsUntrackedCul", {
  link = "GitSignsAddCul"
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
vim.api.nvim_set_hl(ns_id, "GitSignsChangedeleteNr", {
  link = "GitSignsChangeNr"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdelete", {
  link = "GitSignsDelete"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteCul", {
  link = "GitSignsDeleteCul"
})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsTopdeleteNr", {
  link = "GitSignsDeleteNr"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteCul", {
  link = "GitSignsDelete"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteLn", {})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteNr", {
  link = "GitSignsDelete"
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
vim.api.nvim_set_hl(ns_id, "GitSignsAddCul", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddLn", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddNr", {
  link = "GitSignsAdd"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAdd", {
  link = "Added"
})
vim.api.nvim_set_hl(ns_id, "GitGutterAdd", {})
vim.api.nvim_set_hl(ns_id, "DiffAdd", {
  bg = "NvimLightGreen",
  ctermbg = 2,
  ctermfg = 15,
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChange", {
  link = "Changed"
})
vim.api.nvim_set_hl(ns_id, "GitGutterChange", {})
vim.api.nvim_set_hl(ns_id, "DiffChange", {
  bg = "NvimLightGrey4",
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDelete", {
  link = "Removed"
})
vim.api.nvim_set_hl(ns_id, "GitGutterDelete", {})
vim.api.nvim_set_hl(ns_id, "OilPurge", {
  link = "OilDelete"
})
vim.api.nvim_set_hl(ns_id, "OilRestore", {
  link = "OilCreate"
})
vim.api.nvim_set_hl(ns_id, "OilCreate", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "OilChange", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "OilCopy", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "OilMove", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "OilFileHidden", {
  link = "OilHidden"
})
vim.api.nvim_set_hl(ns_id, "OilHidden", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "OilFile", {})
vim.api.nvim_set_hl(ns_id, "OilOrphanLinkTargetHidden", {
  link = "OilOrphanLinkTarget"
})
vim.api.nvim_set_hl(ns_id, "OilOrphanLinkTarget", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "OilLinkTargetHidden", {
  link = "OilHidden"
})
vim.api.nvim_set_hl(ns_id, "OilLinkTarget", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "OilOrphanLinkHidden", {
  link = "OilLinkHidden"
})
vim.api.nvim_set_hl(ns_id, "OilLinkHidden", {
  link = "OilHidden"
})
vim.api.nvim_set_hl(ns_id, "OilSocketHidden", {
  link = "OilHidden"
})
vim.api.nvim_set_hl(ns_id, "OilSocket", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "OilDirIcon", {
  link = "OilDir"
})
vim.api.nvim_set_hl(ns_id, "OilDir", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "OilDirHidden", {
  link = "OilHidden"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_normal", {})
vim.api.nvim_set_hl(ns_id, "FloatTitle", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "GitSignsVirtLnum", {
  link = "GitSignsDeleteVirtLn"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteVirtLn", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteVirtLnInLine", {
  link = "GitSignsDeleteLnInline"
})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteLnInline", {
  link = "GitSignsDeleteInline"
})
vim.api.nvim_set_hl(ns_id, "GitGutterDeleteLine", {})
vim.api.nvim_set_hl(ns_id, "SignifyLineDelete", {})
vim.api.nvim_set_hl(ns_id, "GitSignsDeleteInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeLnInline", {
  link = "GitSignsChangeInline"
})
vim.api.nvim_set_hl(ns_id, "GitSignsChangeInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddLnInline", {
  link = "GitSignsAddInline"
})
vim.api.nvim_set_hl(ns_id, "GitSignsAddInline", {
  link = "TermCursor"
})
vim.api.nvim_set_hl(ns_id, "TermCursor", {
  cterm = {
    reverse = true
  },
  reverse = true
})
vim.api.nvim_set_hl(ns_id, "Define", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewMatch", {
  link = "Search"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewLine", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "Identifier", {
  ctermfg = 4,
  fg = "NvimDarkBlue"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewUser", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewDate", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "cssGradientAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssAttr", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "cssCommonAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssAnimationProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssProp", {
  link = "StorageClass"
})
vim.api.nvim_set_hl(ns_id, "cssAnimationAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssBackgroundProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssBackgroundAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssBorderProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssBorderAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssBoxProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssBoxAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssCascadeProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssCascadeAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssColorProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssDimensionProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssFlexibleBoxProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssFlexibleBoxAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssFontProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssFontAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssMultiColumnProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssMultiColumnAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssInteractProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssInteractAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssGeneratedContentProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssGeneratedContentAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssGridProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssHyerlinkProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssListProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssListAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssObjectProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssObjectAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssPositioningProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssPositioningAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssPrintAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssTableProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssTableAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssTextProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssTextAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssTransformProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssTransitionProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssTransitionAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssUIProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssUIAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssIEUIAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssIEUIProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssAuralProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssAuralAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssMobileTextProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssMediaProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssMediaAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssDefinition", {})
vim.api.nvim_set_hl(ns_id, "cssKeyFrameProp", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "cssPageMarginProp", {
  link = "cssAtKeyword"
})
vim.api.nvim_set_hl(ns_id, "cssAtKeyword", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "cssPageProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssFontDescriptorProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssFontDescriptorAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssBraces", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "cssError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "cssAtRule", {
  link = "Include"
})
vim.api.nvim_set_hl(ns_id, "cssAttrRegion", {})
vim.api.nvim_set_hl(ns_id, "cssComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "cssVendor", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "cssHacks", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "cssNoise", {
  link = "Noise"
})
vim.api.nvim_set_hl(ns_id, "Noise", {})
vim.api.nvim_set_hl(ns_id, "cssBraceError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "cssAttrComma", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssPseudoClassId", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "cssPseudoClassFn", {})
vim.api.nvim_set_hl(ns_id, "cssPseudoClass", {})
vim.api.nvim_set_hl(ns_id, "cssSpecialCharQQ", {})
vim.api.nvim_set_hl(ns_id, "cssSpecialCharQ", {})
vim.api.nvim_set_hl(ns_id, "cssAtRuleLogical", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "cssMediaType", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssPagePseudo", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "cssDeprecated", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "cssContentForPagedMediaProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssLineboxProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssMarqueeProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_visual", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "cssPrintProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_replace", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "cssSpeechProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_command", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "cssContentForPagedMediaAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_terminal", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "cssGridAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_inactive", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "cssLineboxAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssMarginAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssMarqueeAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_normal", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "cssPagedMediaAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssRubyAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssSpeechAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_insert", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "cssRenderAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_visual", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "cssMediaComma", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_replace", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "cssUnicodeRange", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_command", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "cssString", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_terminal", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "markdownValid", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_removed_inactive", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "markdownH1", {
  link = "htmlH1"
})
vim.api.nvim_set_hl(ns_id, "markdownH2", {
  link = "htmlH2"
})
vim.api.nvim_set_hl(ns_id, "markdownH3", {
  link = "htmlH3"
})
vim.api.nvim_set_hl(ns_id, "markdownH4", {
  link = "htmlH4"
})
vim.api.nvim_set_hl(ns_id, "markdownH5", {
  link = "htmlH5"
})
vim.api.nvim_set_hl(ns_id, "markdownH6", {
  link = "htmlH6"
})
vim.api.nvim_set_hl(ns_id, "markdownBlockquote", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "WhichKeyIcon", {
  link = "@markup.link"
})
vim.api.nvim_set_hl(ns_id, "markdownOrderedListMarker", {
  link = "markdownListMarker"
})
vim.api.nvim_set_hl(ns_id, "markdownCodeBlock", {})
vim.api.nvim_set_hl(ns_id, "markdownRule", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "markdownLineBreak", {})
vim.api.nvim_set_hl(ns_id, "markdownLinkText", {
  link = "htmlLink"
})
vim.api.nvim_set_hl(ns_id, "markdownItalic", {
  link = "htmlItalic"
})
vim.api.nvim_set_hl(ns_id, "markdownBold", {
  link = "htmlBold"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticOk", {
  ctermfg = 2,
  fg = "NvimDarkGreen"
})
vim.api.nvim_set_hl(ns_id, "markdownEscape", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "markdownError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "markdownHeadingRule", {
  link = "markdownRule"
})
vim.api.nvim_set_hl(ns_id, "markdownAutomaticLink", {
  link = "markdownUrl"
})
vim.api.nvim_set_hl(ns_id, "@markup.link", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "markdownH1Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownHeadingDelimiter", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownH2Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownH3Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownH4Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownH5Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "SpecialKey", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "markdownLinkDelimiter", {})
vim.api.nvim_set_hl(ns_id, "markdownIdDeclaration", {
  link = "Typedef"
})
vim.api.nvim_set_hl(ns_id, "markdownUrlTitle", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "markdownUrlDelimiter", {
  link = "htmlTag"
})
vim.api.nvim_set_hl(ns_id, "TermCursorNC", {})
vim.api.nvim_set_hl(ns_id, "markdownLinkTextDelimiter", {})
vim.api.nvim_set_hl(ns_id, "markdownLink", {})
vim.api.nvim_set_hl(ns_id, "markdownId", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "markdownIdDelimiter", {
  link = "markdownLinkDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownItalicDelimiter", {
  link = "markdownItalic"
})
vim.api.nvim_set_hl(ns_id, "markdownBoldDelimiter", {
  link = "markdownBold"
})
vim.api.nvim_set_hl(ns_id, "CurSearch", {
  bg = "NvimDarkYellow",
  ctermbg = 3,
  ctermfg = 15,
  fg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "markdownBoldItalic", {
  link = "htmlBoldItalic"
})
vim.api.nvim_set_hl(ns_id, "markdownStrikeDelimiter", {
  link = "markdownStrike"
})
vim.api.nvim_set_hl(ns_id, "markdownStrike", {
  link = "htmlStrike"
})
vim.api.nvim_set_hl(ns_id, "markdownCodeDelimiter", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownFootnote", {
  link = "Typedef"
})
vim.api.nvim_set_hl(ns_id, "markdownFootnoteDefinition", {
  link = "Typedef"
})
vim.api.nvim_set_hl(ns_id, "yamlTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "yamlComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "yamlTAGDirective", {
  link = "yamlDirectiveName"
})
vim.api.nvim_set_hl(ns_id, "yamlDirectiveName", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "yamlYAMLDirective", {
  link = "yamlDirectiveName"
})
vim.api.nvim_set_hl(ns_id, "yamlReservedDirective", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "yamlDirective", {})
vim.api.nvim_set_hl(ns_id, "LineNrAbove", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "LineNrBelow", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "yamlYAMLVersion", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "CursorLineSign", {
  link = "SignColumn"
})
vim.api.nvim_set_hl(ns_id, "CursorLineFold", {
  link = "FoldColumn"
})
vim.api.nvim_set_hl(ns_id, "FoldColumn", {
  link = "SignColumn"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowMappingDelimiter", {
  link = "yamlKeyValueDelimiter"
})
vim.api.nvim_set_hl(ns_id, "yamlKeyValueDelimiter", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowString", {
  link = "yamlString"
})
vim.api.nvim_set_hl(ns_id, "yamlSingleEscape", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "yamlBool", {
  link = "yamlConstant"
})
vim.api.nvim_set_hl(ns_id, "yamlConstant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "yamlNull", {
  link = "yamlConstant"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowMapping", {})
vim.api.nvim_set_hl(ns_id, "yamlFlowCollection", {})
vim.api.nvim_set_hl(ns_id, "yamlFlowMappingKey", {
  link = "yamlMappingKey"
})
vim.api.nvim_set_hl(ns_id, "yamlMappingKey", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowMappingKeyStart", {
  link = "yamlMappingKeyStart"
})
vim.api.nvim_set_hl(ns_id, "VisualNC", {})
vim.api.nvim_set_hl(ns_id, "yamlFlowMappingMerge", {
  link = "yamlMappingMerge"
})
vim.api.nvim_set_hl(ns_id, "yamlMappingMerge", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "WildMenu", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "Folded", {
  bg = "#D5D7DD",
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "yamlTimestamp", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "yamlInteger", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "yamlAlias", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "PmenuThumb", {
  bg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "TabLineSel", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "yamlNodeTag", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "yamlAnchor", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockMappingDelimiter", {
  link = "yamlKeyValueDelimiter"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockMappingKey", {
  link = "yamlMappingKey"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockMappingKeyString", {})
vim.api.nvim_set_hl(ns_id, "yamlBlockMappingMerge", {
  link = "yamlMappingMerge"
})
vim.api.nvim_set_hl(ns_id, "SpellCap", {
  cterm = {
    undercurl = true
  },
  sp = "NvimDarkYellow",
  undercurl = true
})
vim.api.nvim_set_hl(ns_id, "yamlBlockCollectionItemStart", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockScalarHeader", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "Normal", {
  bg = "NvimLightGrey2",
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockString", {})
vim.api.nvim_set_hl(ns_id, "yamlDocumentStart", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "yamlDocumentEnd", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "markdownYamlHead", {})
vim.api.nvim_set_hl(ns_id, "PmenuKind", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "PmenuKindSel", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "PmenuExtra", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "PmenuExtraSel", {
  link = "PmenuSel"
})
vim.api.nvim_set_hl(ns_id, "PmenuSbar", {
  link = "Pmenu"
})
vim.api.nvim_set_hl(ns_id, "TabLine", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "ColorColumn", {
  bg = "NvimLightGrey4",
  cterm = {
    reverse = true
  }
})
vim.api.nvim_set_hl(ns_id, "QuickFixLine", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "NormalNC", {})
vim.api.nvim_set_hl(ns_id, "MsgSeparator", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "Cursor", {
  bg = "fg",
  fg = "bg"
})
vim.api.nvim_set_hl(ns_id, "FloatFooter", {
  link = "FloatTitle"
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugNormal", {
  cterm = {
    reverse = true
  },
  reverse = true
})
vim.api.nvim_set_hl(ns_id, "lCursor", {
  bg = "fg",
  fg = "bg"
})
vim.api.nvim_set_hl(ns_id, "CursorIM", {
  link = "Cursor"
})
vim.api.nvim_set_hl(ns_id, "Substitute", {
  link = "Search"
})
vim.api.nvim_set_hl(ns_id, "VisualNOS", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "CmpItemMenuDefault", {})
vim.api.nvim_set_hl(ns_id, "Character", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "Float", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "Conditional", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "Exception", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "Include", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "Macro", {
  link = "PreProc"
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
vim.api.nvim_set_hl(ns_id, "Typedef", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "SpecialChar", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "SpecialComment", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "Debug", {
  link = "Special"
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
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchFuzzy", {
  link = "CmpItemAbbrMatchFuzzyDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatch", {
  link = "CmpItemAbbrMatchDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDeprecated", {
  link = "CmpItemAbbrDeprecatedDefault"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticFloatingOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticSignOk", {
  link = "DiagnosticOk"
})
vim.api.nvim_set_hl(ns_id, "Delimiter", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "Todo", {
  bold = true,
  cterm = {
    bold = true
  },
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionScope", {
  link = "NvimInvalidIdentifierScope"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionScopeDelimiter", {
  link = "NvimInvalidIdentifierScopeDelimiter"
})
vim.api.nvim_set_hl(ns_id, "VertSplit", {
  link = "WinSeparator"
})
vim.api.nvim_set_hl(ns_id, "IblScope", {
  fg = "#9b9ea4"
})
vim.api.nvim_set_hl(ns_id, "IblWhitespace", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "IblIndent", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "LineNr", {
  fg = "NvimLightGrey4"
})
vim.api.nvim_set_hl(ns_id, "Whitespace", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "PmenuSel", {
  bg = "NvimDarkGrey2",
  blend = 0,
  cterm = {
    reverse = true,
    underline = true
  },
  fg = "#D5D7DD"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_hint_normal_to_lualine_c_normal", {
  bg = "#27292d",
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "PaletteBgMode", {
  bold = true,
  cterm = {
    bold = true
  }
})
vim.api.nvim_set_hl(ns_id, "DiagnosticError", {
  ctermfg = 1,
  fg = "NvimDarkRed"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticWarn", {
  ctermfg = 3,
  fg = "NvimDarkYellow"
})
vim.api.nvim_set_hl(ns_id, "DiffText", {
  bg = "NvimLightCyan",
  ctermbg = 6,
  ctermfg = 15,
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticInfo", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticHint", {
  ctermfg = 4,
  fg = "NvimDarkBlue"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_insert", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_normal", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_insert", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_visual", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_replace", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_command", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_terminal", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_error_inactive", {
  bg = "#c9cbd2",
  fg = "#590008"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_inactive", {})
vim.api.nvim_set_hl(ns_id, "DevIconLXQt", {
  ctermfg = 24,
  fg = "#016d9e"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_normal", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconAsciinema", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconGNOME", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconCinnamon", {
  ctermfg = 124,
  fg = "#93451f"
})
vim.api.nvim_set_hl(ns_id, "DevIconBudgie", {
  ctermfg = 240,
  fg = "#4e5361"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_insert", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconXeroLinux", {
  ctermfg = 60,
  fg = "#5b5f97"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_visual", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconUbuntu", {
  ctermfg = 124,
  fg = "#a6360f"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_replace", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconTails", {
  ctermfg = 54,
  fg = "#56347c"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_command", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconJpg", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_terminal", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebp", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintFolderHL", {
  link = "NvimTreeDiagnosticHintFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHintFolderText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoFolderHL", {
  link = "NvimTreeDiagnosticInfoFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformationFolderText", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_normal", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarningFolderText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorFolderHL", {
  link = "NvimTreeDiagnosticErrorFileHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsErrorFolderText", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_insert", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHintText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoFileHL", {
  link = "DiagnosticUnderlineInfo"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformationText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnFileHL", {
  link = "DiagnosticUnderlineWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarningText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorFileHL", {
  link = "DiagnosticUnderlineError"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsErrorText", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintIcon", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsHint", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticInfoIcon", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsInformation", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnIcon", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsWarning", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticErrorIcon", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLspDiagnosticsError", {})
vim.api.nvim_set_hl(ns_id, "DevIconLibrecadFontFile", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderStaged", {})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_insert", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconAsc", {
  ctermfg = 239,
  fg = "#41525f"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_visual", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconAppleScript", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_replace", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconApp", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_command", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconManjaro", {
  ctermfg = 29,
  fg = "#227b3b"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_terminal", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconNfo", {
  ctermfg = 236,
  fg = "#333329"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_inactive", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXLE", {
  ctermfg = 238,
  fg = "#474747"
})
vim.api.nvim_set_hl(ns_id, "DevIconAudioInterchangeFileFormat", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconAdaSpecification", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconAdaBody", {
  ctermfg = 30,
  fg = "#118080"
})
vim.api.nvim_set_hl(ns_id, "DevIconKubuntu", {
  ctermfg = 24,
  fg = "#005c92"
})
vim.api.nvim_set_hl(ns_id, "DevIconAdvancedAudioCoding", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIcon7z", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIcon3DObjectFile", {
  ctermfg = 240,
  fg = "#5b5b5b"
})
vim.api.nvim_set_hl(ns_id, "DevIcon3gp", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconMakefile", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileIgnored", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileDirtyHL", {
  link = "NvimTreeGitDirtyIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileDirty", {})
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
vim.api.nvim_set_hl(ns_id, "NvimTreeGitNewIcon", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitNew", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitMergeIcon", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitMerge", {})
vim.api.nvim_set_hl(ns_id, "DevIconZigObjectNotation", {
  ctermfg = 94,
  fg = "#7b4d0e"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleBuildScript", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDirtyIcon", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDirty", {})
vim.api.nvim_set_hl(ns_id, "DevIconPrettierConfig", {
  ctermfg = 25,
  fg = "#3264b7"
})
vim.api.nvim_set_hl(ns_id, "DevIconVimrc", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "DevIconEx", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconPlatformio", {
  ctermfg = 130,
  fg = "#a4571d"
})
vim.api.nvim_set_hl(ns_id, "DevIconnode", {
  ctermfg = 22,
  fg = "#3f6b34"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshrc", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenSCAD", {
  ctermfg = 58,
  fg = "#53480f"
})
vim.api.nvim_set_hl(ns_id, "DevIconZshenv", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconLhs", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconLock", {
  ctermfg = 59,
  fg = "#5e5e5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconKotlinScript", {
  ctermfg = 92,
  fg = "#5f3ebf"
})
vim.api.nvim_set_hl(ns_id, "DevIconStaticLibraryArchive", {
  ctermfg = 239,
  fg = "#494a47"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXDEConfigFile", {
  ctermfg = 59,
  fg = "#606060"
})
vim.api.nvim_set_hl(ns_id, "DevIconLicense", {
  ctermfg = 58,
  fg = "#686020"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha224", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconKsh", {
  ctermfg = 238,
  fg = "#3a4446"
})
vim.api.nvim_set_hl(ns_id, "DevIconKrita", {
  ctermfg = 127,
  fg = "#a12ea7"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenliverc", {
  ctermfg = 24,
  fg = "#425c79"
})
vim.api.nvim_set_hl(ns_id, "DevIconLinuxKernelObject", {
  ctermfg = 239,
  fg = "#494a47"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrettierIgnore", {
  ctermfg = 25,
  fg = "#3264b7"
})
vim.api.nvim_set_hl(ns_id, "DevIconKDEglobals", {
  ctermfg = 32,
  fg = "#1573b6"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenlive", {
  ctermfg = 24,
  fg = "#425c79"
})
vim.api.nvim_set_hl(ns_id, "DevIconNPMrc", {
  ctermfg = 161,
  fg = "#ae1d38"
})
vim.api.nvim_set_hl(ns_id, "DevIconJustfile", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdbx", {
  ctermfg = 28,
  fg = "#3e7427"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotTextResource", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrusaSlicer", {
  ctermfg = 130,
  fg = "#9d4717"
})
vim.api.nvim_set_hl(ns_id, "DevIconIllumos", {
  ctermfg = 160,
  fg = "#bf320b"
})
vim.api.nvim_set_hl(ns_id, "DevIconTex", {
  ctermfg = 22,
  fg = "#3d6117"
})
vim.api.nvim_set_hl(ns_id, "DevIconXauthority", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyperbolaGNULinuxLibre", {
  ctermfg = 238,
  fg = "#404040"
})
vim.api.nvim_set_hl(ns_id, "DevIconI18nConfig", {
  ctermfg = 60,
  fg = "#515987"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyprpaper", {
  ctermfg = 30,
  fg = "#008082"
})
vim.api.nvim_set_hl(ns_id, "DevIconGuix", {
  ctermfg = 58,
  fg = "#554400"
})
vim.api.nvim_set_hl(ns_id, "DevIconScala", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyprland", {
  ctermfg = 30,
  fg = "#008082"
})
vim.api.nvim_set_hl(ns_id, "DevIconGentoo", {
  ctermfg = 60,
  fg = "#585667"
})
vim.api.nvim_set_hl(ns_id, "DevIconImage", {
  ctermfg = 238,
  fg = "#453f43"
})
vim.api.nvim_set_hl(ns_id, "DevIconGarudaLinux", {
  ctermfg = 25,
  fg = "#1f57a9"
})
vim.api.nvim_set_hl(ns_id, "DevIconGulpfile", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "DevIconNPMIgnore", {
  ctermfg = 161,
  fg = "#ae1d38"
})
vim.api.nvim_set_hl(ns_id, "DevIconMailmap", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconXls", {
  ctermfg = 29,
  fg = "#207245"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebpack", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconLuaurc", {
  ctermfg = 32,
  fg = "#007abf"
})
vim.api.nvim_set_hl(ns_id, "DevIconXz", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitModules", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvelte", {
  ctermfg = 160,
  fg = "#bf2e00"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitlabCI", {
  ctermfg = 124,
  fg = "#aa321f"
})
vim.api.nvim_set_hl(ns_id, "DevIconXul", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconSrt", {
  ctermfg = 94,
  fg = "#805c0a"
})
vim.api.nvim_set_hl(ns_id, "DevIconRlib", {
  ctermfg = 95,
  fg = "#6f5242"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyc", {
  ctermfg = 236,
  fg = "#332d1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconVlang", {
  ctermfg = 24,
  fg = "#3e5a7f"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitBlameIgnore", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconXcLocalization", {
  ctermfg = 24,
  fg = "#1c708e"
})
vim.api.nvim_set_hl(ns_id, "DevIconEslintIgnore", {
  ctermfg = 56,
  fg = "#4b32c3"
})
vim.api.nvim_set_hl(ns_id, "DevIconMotoko", {
  ctermfg = 61,
  fg = "#654ca7"
})
vim.api.nvim_set_hl(ns_id, "DevIconEditorConfig", {
  ctermfg = 236,
  fg = "#333030"
})
vim.api.nvim_set_hl(ns_id, "DevIconQuery", {
  ctermfg = 58,
  fg = "#607035"
})
vim.api.nvim_set_hl(ns_id, "DevIconJl", {
  ctermfg = 96,
  fg = "#6c4b7c"
})
vim.api.nvim_set_hl(ns_id, "DevIconMaterial", {
  ctermfg = 89,
  fg = "#8a2b72"
})
vim.api.nvim_set_hl(ns_id, "DevIconDsStore", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "DevIconDownload", {
  ctermfg = 23,
  fg = "#226654"
})
vim.api.nvim_set_hl(ns_id, "DevIconBashrc", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconSig", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconBashProfile", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconXaml", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconBabelrc", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconNotebook", {
  ctermfg = 24,
  fg = "#366b8a"
})
vim.api.nvim_set_hl(ns_id, "DevIconIco", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconToml", {
  ctermfg = 88,
  fg = "#753219"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsScriptModulefile", {
  ctermfg = 60,
  fg = "#4f5893"
})
vim.api.nvim_set_hl(ns_id, "DevIconWavPackCorrection", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha1", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconTempl", {
  ctermfg = 58,
  fg = "#6e5e18"
})
vim.api.nvim_set_hl(ns_id, "DevIconGemfile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconSketchUp", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidWorksAsm", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconPhp", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidWorksPrt", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconElisp", {
  ctermfg = 60,
  fg = "#61568e"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolveSpace", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazelBuild", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconSharedObject", {
  ctermfg = 239,
  fg = "#494a47"
})
vim.api.nvim_set_hl(ns_id, "DevIconSpecJs", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconMPEGAudioLayerIII", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconGDScript", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconTerraform", {
  ctermfg = 55,
  fg = "#4732af"
})
vim.api.nvim_set_hl(ns_id, "DevIconVsix", {
  ctermfg = 91,
  fg = "#643995"
})
vim.api.nvim_set_hl(ns_id, "DevIconStyl", {
  ctermfg = 22,
  fg = "#466024"
})
vim.api.nvim_set_hl(ns_id, "DevIconSwift", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotTextScene", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypoScript", {
  ctermfg = 130,
  fg = "#aa5a00"
})
vim.api.nvim_set_hl(ns_id, "DevIconSignature", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeCADConfig", {
  ctermfg = 88,
  fg = "#98262c"
})
vim.api.nvim_set_hl(ns_id, "DevIconNix", {
  ctermfg = 24,
  fg = "#3f5d72"
})
vim.api.nvim_set_hl(ns_id, "DevIconCheckhealth", {
  ctermfg = 24,
  fg = "#3a5a7e"
})
vim.api.nvim_set_hl(ns_id, "DevIconSRCINFO", {
  ctermfg = 24,
  fg = "#0b6f9e"
})
vim.api.nvim_set_hl(ns_id, "DevIconXorgConf", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "DevIconSte", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconDropbox", {
  ctermfg = 26,
  fg = "#0049be"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha256", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconHaxe", {
  ctermfg = 130,
  fg = "#9c5715"
})
vim.api.nvim_set_hl(ns_id, "DevIconCp", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconKotlin", {
  ctermfg = 92,
  fg = "#5f3ebf"
})
vim.api.nvim_set_hl(ns_id, "DevIconBmp", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconHh", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconVerilog", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "DevIconGIMP", {
  ctermfg = 238,
  fg = "#4a4434"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazelWorkspace", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconElf", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "DevIconBinaryGLTF", {
  ctermfg = 94,
  fg = "#80581e"
})
vim.api.nvim_set_hl(ns_id, "DevIconCsv", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconJsonc", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconBlueprint", {
  ctermfg = 25,
  fg = "#3a6497"
})
vim.api.nvim_set_hl(ns_id, "DevIconElm", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconAutoCADDxf", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconDesktopEntry", {
  ctermfg = 54,
  fg = "#563d7c"
})
vim.api.nvim_set_hl(ns_id, "DevIconAutoCADDwg", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconEpp", {
  ctermfg = 94,
  fg = "#80530d"
})
vim.api.nvim_set_hl(ns_id, "DevIconMojo", {
  ctermfg = 160,
  fg = "#bf3917"
})
vim.api.nvim_set_hl(ns_id, "DevIconJava", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "DevIconMobi", {
  ctermfg = 94,
  fg = "#755836"
})
vim.api.nvim_set_hl(ns_id, "DevIconHtml", {
  ctermfg = 124,
  fg = "#ab3a1c"
})
vim.api.nvim_set_hl(ns_id, "DevIconNim", {
  ctermfg = 58,
  fg = "#514700"
})
vim.api.nvim_set_hl(ns_id, "DevIconHeex", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "NormalFloat", {
  bg = "NvimLightGrey1"
})
vim.api.nvim_set_hl(ns_id, "IncSearch", {
  link = "CurSearch"
})
vim.api.nvim_set_hl(ns_id, "TelescopeMatching", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsTitle", {
  link = "TelescopeTitle"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsBorder", {
  link = "TelescopeBorder"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsNormal", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptPrefix", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_replace", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_inactive", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_terminal", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_command", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_replace", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_visual", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_insert", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTypeScript_normal", {
  bg = "#27292d",
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "@nospell", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_normal_to_lualine_b_diff_modified_normal", {})
vim.api.nvim_set_hl(ns_id, "lsp_markdown2", {})
vim.api.nvim_set_hl(ns_id, "mkdQuot", {})
vim.api.nvim_set_hl(ns_id, "mkdAmp", {})
vim.api.nvim_set_hl(ns_id, "mkdGt", {})
vim.api.nvim_set_hl(ns_id, "mkdLt", {})
vim.api.nvim_set_hl(ns_id, "mkdNbsp", {})
vim.api.nvim_set_hl(ns_id, "mkdEscape", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "yamlMappingKeyStart", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "yamlString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "yamlBlockNodeProperties", {})
vim.api.nvim_set_hl(ns_id, "yamlBlockMappingKeyStart", {
  link = "yamlMappingKeyStart"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowIndicator", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowNodeProperties", {})
vim.api.nvim_set_hl(ns_id, "yamlFloat", {
  link = "Float"
})
vim.api.nvim_set_hl(ns_id, "yamlPlainScalar", {})
vim.api.nvim_set_hl(ns_id, "yamlEscape", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "yamlFlowStringDelimiter", {
  link = "yamlString"
})
vim.api.nvim_set_hl(ns_id, "yamlTagPrefix", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "yamlTagHandle", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "markdownBoldItalicDelimiter", {
  link = "markdownBoldItalic"
})
vim.api.nvim_set_hl(ns_id, "markdownUrlTitleDelimiter", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownUrl", {
  link = "Float"
})
vim.api.nvim_set_hl(ns_id, "markdownH6Delimiter", {
  link = "markdownHeadingDelimiter"
})
vim.api.nvim_set_hl(ns_id, "markdownCode", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "markdownListMarker", {
  link = "htmlTagName"
})
vim.api.nvim_set_hl(ns_id, "markdownLineStart", {})
vim.api.nvim_set_hl(ns_id, "typescriptConditionalParen", {})
vim.api.nvim_set_hl(ns_id, "htmlStyleArg", {
  link = "htmlString"
})
vim.api.nvim_set_hl(ns_id, "cssLength", {})
vim.api.nvim_set_hl(ns_id, "cssFontDescriptor", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssPseudoClassLang", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "cssTransformAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssPaddingAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssHyerlinkAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssDimensionAttr", {
  link = "cssAttr"
})
vim.api.nvim_set_hl(ns_id, "cssRenderProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssRubyProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "cssPagedMediaProp", {
  link = "cssProp"
})
vim.api.nvim_set_hl(ns_id, "DevIconWaveformAudioFile", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconTgz", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconGentooBuild", {
  ctermfg = 60,
  fg = "#4c416e"
})
vim.api.nvim_set_hl(ns_id, "DevIconBat", {
  ctermfg = 58,
  fg = "#40500f"
})
vim.api.nvim_set_hl(ns_id, "DevIconEdn", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconJs", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebmanifest", {
  ctermfg = 58,
  fg = "#504b1e"
})
vim.api.nvim_set_hl(ns_id, "DevIconBQN", {
  ctermfg = 23,
  fg = "#20544d"
})
vim.api.nvim_set_hl(ns_id, "DevIconBrewfile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitCommit", {
  ctermfg = 160,
  fg = "#b83a1d"
})
vim.api.nvim_set_hl(ns_id, "NvimStringBody", {
  link = "NvimString"
})
vim.api.nvim_set_hl(ns_id, "DevIconWindowsMediaAudio", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconVagrantfile", {
  ctermfg = 26,
  fg = "#104abf"
})
vim.api.nvim_set_hl(ns_id, "DevIconTcl", {
  ctermfg = 25,
  fg = "#1e5cb3"
})
vim.api.nvim_set_hl(ns_id, "DevIconDll", {
  ctermfg = 52,
  fg = "#4d2c0b"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionScope", {
  link = "NvimIdentifierScope"
})
vim.api.nvim_set_hl(ns_id, "DevIconEmbeddedOpenTypeFont", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "DevIconTrueTypeFont", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "DevIconVRML", {
  ctermfg = 240,
  fg = "#5b5b5b"
})
vim.api.nvim_set_hl(ns_id, "DevIconEpub", {
  ctermfg = 94,
  fg = "#755836"
})
vim.api.nvim_set_hl(ns_id, "DevIconTxz", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconEjs", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsscript", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconExs", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "Comment", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "DevIconGodotProject", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconFusion360", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "ErrorMsg", {
  ctermfg = 1,
  fg = "NvimDarkRed"
})
vim.api.nvim_set_hl(ns_id, "DevIconJsx", {
  ctermfg = 31,
  fg = "#158197"
})
vim.api.nvim_set_hl(ns_id, "DevIconArch", {
  ctermfg = 24,
  fg = "#0b6f9e"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpusAudioFile", {
  ctermfg = 24,
  fg = "#005880"
})
vim.api.nvim_set_hl(ns_id, "DevIconOpenTypeFont", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackedResource", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeCAD", {
  ctermfg = 88,
  fg = "#98262c"
})
vim.api.nvim_set_hl(ns_id, "DevIconProcfile", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconFdmdownload", {
  ctermfg = 23,
  fg = "#226654"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsd", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeLosslessAudioCodec", {
  ctermfg = 24,
  fg = "#005880"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyd", {
  ctermfg = 236,
  fg = "#332d1d"
})
vim.api.nvim_set_hl(ns_id, "DevIconFIGletFontControl", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "DevIconRproj", {
  ctermfg = 29,
  fg = "#286844"
})
vim.api.nvim_set_hl(ns_id, "Type", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "Special", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "DevIconFIGletFontFormat", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "NvimTernary", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "StatusLineNC", {
  bg = "#D5D7DD",
  cterm = {
    bold = true,
    underline = true
  },
  fg = "NvimDarkGrey3"
})
vim.api.nvim_set_hl(ns_id, "NvimMod", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "StatusLine", {
  bg = "NvimDarkGrey3",
  cterm = {
    reverse = true
  },
  fg = "#D5D7DD"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectFile", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "NvimMultiplication", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconWasm", {
  ctermfg = 55,
  fg = "#4539a4"
})
vim.api.nvim_set_hl(ns_id, "DevIconPub", {
  ctermfg = 238,
  fg = "#4c422f"
})
vim.api.nvim_set_hl(ns_id, "NvimConcatOrSubscript", {
  link = "NvimConcat"
})
vim.api.nvim_set_hl(ns_id, "DevIconXcPlayground", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryMinus", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryPlus", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconGCode", {
  ctermfg = 24,
  fg = "#0f5582"
})
vim.api.nvim_set_hl(ns_id, "DevIconZsh", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconXml", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "NvimNot", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyi", {
  ctermfg = 94,
  fg = "#805e02"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsManifestfile", {
  ctermfg = 60,
  fg = "#4f5893"
})
vim.api.nvim_set_hl(ns_id, "DevIconXlsx", {
  ctermfg = 29,
  fg = "#207245"
})
vim.api.nvim_set_hl(ns_id, "DevIconRb", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyw", {
  ctermfg = 24,
  fg = "#3c6f98"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithSubtraction", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithAddition", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "DevIconPyx", {
  ctermfg = 24,
  fg = "#3c6f98"
})
vim.api.nvim_set_hl(ns_id, "DevIconApple", {
  ctermfg = 240,
  fg = "#515556"
})
vim.api.nvim_set_hl(ns_id, "DevIconHaml", {
  ctermfg = 236,
  fg = "#2f2f2d"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifier", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidValue", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidList", {
  link = "NvimInvalidContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDict", {
  link = "NvimInvalidContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidContainer", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconSlim", {
  ctermfg = 124,
  fg = "#aa391c"
})
vim.api.nvim_set_hl(ns_id, "DevIconAlmalinux", {
  ctermfg = 160,
  fg = "#bf3437"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscriptBracket", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscript", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidCallingParenthesis", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNestingParenthesis", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "DevIconGTK", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconAOSC", {
  ctermfg = 124,
  fg = "#c00000"
})
vim.api.nvim_set_hl(ns_id, "DevIconSublime", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconGv", {
  ctermfg = 24,
  fg = "#244a6a"
})
vim.api.nvim_set_hl(ns_id, "DevIconCoffee", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconGz", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidMultiplication", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconArchcraft", {
  ctermfg = 23,
  fg = "#435e52"
})
vim.api.nvim_set_hl(ns_id, "DevIconIcal", {
  ctermfg = 18,
  fg = "#2b2e83"
})
vim.api.nvim_set_hl(ns_id, "NvimTernaryColon", {
  link = "NvimTernary"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryMinus", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComparison", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconKalgebrarc", {
  ctermfg = 32,
  fg = "#1573b6"
})
vim.api.nvim_set_hl(ns_id, "DevIconSecurity", {
  ctermfg = 238,
  fg = "#3f4143"
})
vim.api.nvim_set_hl(ns_id, "DevIconBSPWM", {
  ctermfg = 239,
  fg = "#4f4f4f"
})
vim.api.nvim_set_hl(ns_id, "DevIconKiCadSymbolTable", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconTailwindConfig", {
  ctermfg = 31,
  fg = "#158197"
})
vim.api.nvim_set_hl(ns_id, "DevIconTSConfig", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCache", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconVLC", {
  ctermfg = 130,
  fg = "#9f5100"
})
vim.api.nvim_set_hl(ns_id, "DevIconVercel", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconWeston", {
  ctermfg = 94,
  fg = "#805e00"
})
vim.api.nvim_set_hl(ns_id, "DevIconxmonad", {
  ctermfg = 131,
  fg = "#a9333e"
})
vim.api.nvim_set_hl(ns_id, "DevIconTmux", {
  ctermfg = 28,
  fg = "#0f8c13"
})
vim.api.nvim_set_hl(ns_id, "TabLineFill", {
  link = "TabLine"
})
vim.api.nvim_set_hl(ns_id, "DevIconMonkeysAudio", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "DevIconAndroid", {
  ctermfg = 29,
  fg = "#277e3e"
})
vim.api.nvim_set_hl(ns_id, "DevIconapk", {
  ctermfg = 29,
  fg = "#277e3e"
})
vim.api.nvim_set_hl(ns_id, "DevIconMXLinux", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "DevIconNixOS", {
  ctermfg = 24,
  fg = "#3d586e"
})
vim.api.nvim_set_hl(ns_id, "DevIconAss", {
  ctermfg = 94,
  fg = "#805c0a"
})
vim.api.nvim_set_hl(ns_id, "DevIconopenSUSE", {
  ctermfg = 64,
  fg = "#4a7818"
})
vim.api.nvim_set_hl(ns_id, "DevIconAzureCli", {
  ctermfg = 25,
  fg = "#005a9f"
})
vim.api.nvim_set_hl(ns_id, "DevIconBackup", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconParrot", {
  ctermfg = 23,
  fg = "#2a6f80"
})
vim.api.nvim_set_hl(ns_id, "DevIconBazel", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconpostmarketOS", {
  ctermfg = 22,
  fg = "#007300"
})
vim.api.nvim_set_hl(ns_id, "DevIconLrc", {
  ctermfg = 94,
  fg = "#805c0a"
})
vim.api.nvim_set_hl(ns_id, "DevIconBlade", {
  ctermfg = 124,
  fg = "#a0372b"
})
vim.api.nvim_set_hl(ns_id, "DevIconM3u", {
  ctermfg = 95,
  fg = "#764a57"
})
vim.api.nvim_set_hl(ns_id, "DevIconM3u8", {
  ctermfg = 95,
  fg = "#764a57"
})
vim.api.nvim_set_hl(ns_id, "DevIconBlender", {
  ctermfg = 130,
  fg = "#9c4f00"
})
vim.api.nvim_set_hl(ns_id, "DevIconMPEG4", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "Search", {
  bg = "NvimLightYellow",
  ctermbg = 3,
  ctermfg = 15,
  fg = "NvimDarkGrey1"
})
vim.api.nvim_set_hl(ns_id, "DevIconM4V", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconRedhat", {
  ctermfg = 196,
  fg = "#ee0000"
})
vim.api.nvim_set_hl(ns_id, "DevIconMagnet", {
  ctermfg = 124,
  fg = "#a51b16"
})
vim.api.nvim_set_hl(ns_id, "DevIconRockyLinux", {
  ctermfg = 29,
  fg = "#0b865e"
})
vim.api.nvim_set_hl(ns_id, "DevIconBoundaryRepresentation", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconBz", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileIcon", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeImageFile", {
  link = "Question"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeExecFile", {
  link = "Question"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSpecialFile", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "DevIconSabayon", {
  ctermfg = 238,
  fg = "#424242"
})
vim.api.nvim_set_hl(ns_id, "DevIconBz2", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconBz3", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconSlackware", {
  ctermfg = 25,
  fg = "#35477f"
})
vim.api.nvim_set_hl(ns_id, "DevIconPng", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconGif", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconJpegXl", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconJpeg", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderStagedHL", {
  link = "NvimTreeGitFileStagedHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderRenamedHL", {
  link = "NvimTreeGitFileRenamedHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderRenamed", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderNewHL", {
  link = "NvimTreeGitFileNewHL"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticDeprecated", {
  cterm = {
    strikethrough = true
  },
  sp = "NvimDarkRed",
  strikethrough = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnnecessary", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderNew", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderMergeHL", {
  link = "NvimTreeGitFileMergeHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderMerge", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderIgnoredHL", {
  link = "NvimTreeGitFileIgnoredHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderIgnored", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderDirtyHL", {
  link = "NvimTreeGitFileDirtyHL"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderDirty", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileStagedHL", {
  link = "NvimTreeGitStagedIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileStaged", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileRenamedHL", {
  link = "NvimTreeGitRenamedIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileRenamed", {})
vim.api.nvim_set_hl(ns_id, "typescriptOptionalMark", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocLinkTag", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileMergeHL", {
  link = "NvimTreeGitMergeIcon"
})
vim.api.nvim_set_hl(ns_id, "TelescopeSelectionCaret", {
  link = "TelescopeSelection"
})
vim.api.nvim_set_hl(ns_id, "TelescopeSelection", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocAs", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocEventRef", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocName", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocRef", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocParamType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocParamName", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocNamedParamType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocA", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocDesc", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocNumParam", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocNGDirective", {})
vim.api.nvim_set_hl(ns_id, "typescriptDocParam", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocTags", {
  link = "SpecialComment"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocNotation", {
  link = "SpecialComment"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "typescriptLineComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "DevIconTFVars", {
  ctermfg = 55,
  fg = "#4732af"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDivision", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidMod", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconJson5", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "typescriptAbstract", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptFuncKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptAmbientDeclaration", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptEndColons", {
  link = "Exception"
})
vim.api.nvim_set_hl(ns_id, "typescriptDebugger", {})
vim.api.nvim_set_hl(ns_id, "typescriptExceptions", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptTry", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconMustache", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptClassKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDefault", {
  link = "typescriptCase"
})
vim.api.nvim_set_hl(ns_id, "typescriptCase", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "typescriptBranch", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "typescriptAsyncFor", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptLoopParen", {})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextHint", {
  link = "DiagnosticHint"
})
vim.api.nvim_set_hl(ns_id, "typescriptRepeat", {
  link = "Repeat"
})
vim.api.nvim_set_hl(ns_id, "DevIconPatch", {
  ctermfg = 239,
  fg = "#41535b"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextError", {
  link = "DiagnosticError"
})
vim.api.nvim_set_hl(ns_id, "DevIconi3", {
  ctermfg = 236,
  fg = "#2e2f30"
})
vim.api.nvim_set_hl(ns_id, "typescriptConditional", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlinkFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobal", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptMessage", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextInfo", {
  link = "DiagnosticInfo"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineHint", {
  cterm = {
    underline = true
  },
  sp = "NvimDarkBlue",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineError", {
  cterm = {
    underline = true
  },
  sp = "NvimDarkRed",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineWarn", {
  cterm = {
    underline = true
  },
  sp = "NvimDarkYellow",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineInfo", {
  cterm = {
    underline = true
  },
  sp = "NvimDarkCyan",
  underline = true
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
vim.api.nvim_set_hl(ns_id, "typescriptNull", {
  link = "Boolean"
})
vim.api.nvim_set_hl(ns_id, "DevIconMjs", {
  ctermfg = 58,
  fg = "#504b1e"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeClosedFolderIcon", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedFolderIcon", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "DevIconOrgMode", {
  ctermfg = 66,
  fg = "#4f7166"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeEmptyFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptDeclaration", {
  ctermfg = 94,
  fg = "#6a4c2a"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "DevIconSystemVerilog", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "Visual", {
  bg = "NvimLightGrey4",
  ctermbg = 0,
  ctermfg = 15
})
vim.api.nvim_set_hl(ns_id, "DevIconOggVorbis", {
  ctermfg = 24,
  fg = "#005880"
})
vim.api.nvim_set_hl(ns_id, "DevIconCxxm", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCxx", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconcudah", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_normal", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAnd", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconCts", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconXresources", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "TelescopeBorder", {
  link = "TelescopeNormal"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_insert", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidTernaryColon", {
  link = "NvimInvalidTernary"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_visual", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidParenthesis", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_replace", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "DevIconStep", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_command", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_terminal", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSubscriptColon", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_added_inactive", {
  bg = "#c9cbd2",
  fg = "#005523"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_normal", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diff_modified_insert", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierScopeDelimiter", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidColon", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsSpecialComment", {
  link = "SpecialComment"
})
vim.api.nvim_set_hl(ns_id, "SnippetTabstop", {
  link = "Visual"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidArrow", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "DevIconCSharpProject", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconThunderbird", {
  ctermfg = 25,
  fg = "#0e5ca9"
})
vim.api.nvim_set_hl(ns_id, "DevIconRazorPage", {
  ctermfg = 56,
  fg = "#512bd4"
})
vim.api.nvim_set_hl(ns_id, "DevIconMpp", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "Constant", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "DevIconImportConfiguration", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "DevIconSml", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconFortran", {
  ctermfg = 53,
  fg = "#563b70"
})
vim.api.nvim_set_hl(ns_id, "DevIconGvimrc", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "DevIconIges", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconHyprlock", {
  ctermfg = 30,
  fg = "#008082"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitIgnoredIcon", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "DevIconClojureJS", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconJWM", {
  ctermfg = 25,
  fg = "#005a9a"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffUntracked", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffDelete", {
  link = "DiffDelete"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffChange", {
  link = "DiffChange"
})
vim.api.nvim_set_hl(ns_id, "DevIconBash", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsDiffAdd", {
  link = "DiffAdd"
})
vim.api.nvim_set_hl(ns_id, "DevIconPy.typed", {
  ctermfg = 94,
  fg = "#805e02"
})
vim.api.nvim_set_hl(ns_id, "DevIconCantorrc", {
  ctermfg = 32,
  fg = "#1573b6"
})
vim.api.nvim_set_hl(ns_id, "DevIconGitLogo", {
  ctermfg = 160,
  fg = "#b5391e"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdenliveLayoutsrc", {
  ctermfg = 24,
  fg = "#425c79"
})
vim.api.nvim_set_hl(ns_id, "DevIconKbx", {
  ctermfg = 240,
  fg = "#565856"
})
vim.api.nvim_set_hl(ns_id, "DevIconKdb", {
  ctermfg = 28,
  fg = "#3e7427"
})
vim.api.nvim_set_hl(ns_id, "DevIconKritarc", {
  ctermfg = 127,
  fg = "#a12ea7"
})
vim.api.nvim_set_hl(ns_id, "DevIconLXQtConfigFile", {
  ctermfg = 24,
  fg = "#016e9e"
})
vim.api.nvim_set_hl(ns_id, "DevIconMixLock", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconMpv", {
  ctermfg = 53,
  fg = "#3b1342"
})
vim.api.nvim_set_hl(ns_id, "NvimRegister", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackageJson", {
  ctermfg = 161,
  fg = "#ae1d38"
})
vim.api.nvim_set_hl(ns_id, "DevIconPackageLockJson", {
  ctermfg = 52,
  fg = "#7a0d21"
})
vim.api.nvim_set_hl(ns_id, "DevIconPKGBUILD", {
  ctermfg = 24,
  fg = "#0b6f9e"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeOpenedHL", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "WhichKey", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "MsgArea", {})
vim.api.nvim_set_hl(ns_id, "DevIconXSettingsdConf", {
  ctermfg = 124,
  fg = "#ac3a12"
})
vim.api.nvim_set_hl(ns_id, "DevIconD", {
  ctermfg = 22,
  fg = "#325a13"
})
vim.api.nvim_set_hl(ns_id, "String", {
  ctermfg = 2,
  fg = "NvimDarkGreen"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsField", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsMethod", {
  link = "Method"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsClass", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsStruct", {
  link = "Struct"
})
vim.api.nvim_set_hl(ns_id, "DevIconCPlusPlus", {
  ctermfg = 125,
  fg = "#a23253"
})
vim.api.nvim_set_hl(ns_id, "DevIconGleam", {
  ctermfg = 53,
  fg = "#553a51"
})
vim.api.nvim_set_hl(ns_id, "DevIconBin", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticHintFileHL", {
  link = "DiagnosticUnderlineHint"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeDiagnosticWarnFolderHL", {
  link = "NvimTreeDiagnosticWarnFileHL"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_warn_inactive", {
  bg = "#c9cbd2",
  fg = "#6b5300"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_inactive", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidComma", {
  link = "NvimInvalidDelimiter"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSize", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewGroup", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewHyphen", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSocket", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewExecute", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewWrite", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewBlock", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewLink", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewDirectory", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewRead", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewSticky", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewCharDev", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "TelescopePreviewPipe", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitIgnored", {})
vim.api.nvim_set_hl(ns_id, "DevIconInfo", {
  ctermfg = 236,
  fg = "#333329"
})
vim.api.nvim_set_hl(ns_id, "DevIconSuo", {
  ctermfg = 91,
  fg = "#643995"
})
vim.api.nvim_set_hl(ns_id, "DevIconVHDL", {
  ctermfg = 22,
  fg = "#017226"
})
vim.api.nvim_set_hl(ns_id, "DevIconTwig", {
  ctermfg = 22,
  fg = "#466024"
})
vim.api.nvim_set_hl(ns_id, "TelescopePromptCounter", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "Keyword", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconIge", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconNushell", {
  ctermfg = 29,
  fg = "#276f4e"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJsx_insert", {})
vim.api.nvim_set_hl(ns_id, "javaScriptFunction", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "@conceal", {})
vim.api.nvim_set_hl(ns_id, "@import", {})
vim.api.nvim_set_hl(ns_id, "@none", {})
vim.api.nvim_set_hl(ns_id, "DevIconPl", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconSvelteConfig", {
  ctermfg = 160,
  fg = "#bf2e00"
})
vim.api.nvim_set_hl(ns_id, "DevIconRobotsTxt", {
  ctermfg = 60,
  fg = "#465470"
})
vim.api.nvim_set_hl(ns_id, "DevIconGradleSettings", {
  ctermfg = 24,
  fg = "#005f87"
})
vim.api.nvim_set_hl(ns_id, "DevIconRakefile", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconIonic", {
  ctermfg = 25,
  fg = "#355fa5"
})
vim.api.nvim_set_hl(ns_id, "DevIconIfc", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconKritadisplayrc", {
  ctermfg = 127,
  fg = "#a12ea7"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidUnaryMinus", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconH", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconHbs", {
  ctermfg = 130,
  fg = "#a04f1d"
})
vim.api.nvim_set_hl(ns_id, "DiffDelete", {
  bold = true,
  cterm = {
    bold = true
  },
  ctermfg = 1,
  fg = "NvimDarkRed"
})
vim.api.nvim_set_hl(ns_id, "DevIconPulseCodeModulation", {
  ctermfg = 24,
  fg = "#005880"
})
vim.api.nvim_set_hl(ns_id, "DevIconSh", {
  ctermfg = 238,
  fg = "#3a4446"
})
vim.api.nvim_set_hl(ns_id, "DevIconPls", {
  ctermfg = 95,
  fg = "#764a57"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidPlainAssignment", {
  link = "NvimInvalidAssignment"
})
vim.api.nvim_set_hl(ns_id, "DevIconPart", {
  ctermfg = 23,
  fg = "#226654"
})
vim.api.nvim_set_hl(ns_id, "@markup.strikethrough", {
  cterm = {
    strikethrough = true
  },
  strikethrough = true
})
vim.api.nvim_set_hl(ns_id, "DevIconJavaScriptReactTest", {
  ctermfg = 31,
  fg = "#158197"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScriptReactTest", {
  ctermfg = 26,
  fg = "#1354bf"
})
vim.api.nvim_set_hl(ns_id, "DevIconMOV", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconObjectiveCPlusPlus", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconErb", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconGraphQL", {
  ctermfg = 126,
  fg = "#ac2880"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsi", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconPm", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "DevIconDb", {
  ctermfg = 238,
  fg = "#494848"
})
vim.api.nvim_set_hl(ns_id, "DevIconTestJs", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconTestTs", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsharp", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconDconf", {
  ctermfg = 236,
  fg = "#333333"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidTernary", {
  link = "NvimInvalidOperator"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticVirtualTextWarn", {
  link = "DiagnosticWarn"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidConcat", {
  link = "NvimInvalidBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconCson", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconMli", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidAssignment", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "Pmenu", {
  bg = "#D5D7DD",
  cterm = {
    reverse = true
  }
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidCurly", {
  link = "NvimInvalidSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidLambda", {
  link = "NvimInvalidParenthesis"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_visual", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "CmpItemMenu", {
  link = "CmpItemMenuDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKindDefault", {
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "CmpItemKind", {
  link = "CmpItemKindDefault"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchFuzzyDefault", {})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrMatchDefault", {})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDeprecatedDefault", {
  fg = "NvimDarkGrey4"
})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbrDefault", {})
vim.api.nvim_set_hl(ns_id, "CmpItemAbbr", {
  link = "CmpItemAbbrDefault"
})
vim.api.nvim_set_hl(ns_id, "NvimDapVirtualText", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidNot", {
  link = "NvimInvalidUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_replace", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierKey", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "@constant.builtin", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "@module", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "@string", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalNC", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeWinSeparator", {
  link = "WinSeparator"
})
vim.api.nvim_set_hl(ns_id, "NvimTreePopup", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSignColumn", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_command", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderDeleted", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFolderDeletedHL", {
  link = "NvimTreeGitFileDeletedHL"
})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "Method", {})
vim.api.nvim_set_hl(ns_id, "Struct", {})
vim.api.nvim_set_hl(ns_id, "TelescopeResultsLineNr", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileIgnoredHL", {
  link = "NvimTreeGitIgnoredIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileMerge", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitFileNewHL", {
  link = "NvimTreeGitNewIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFileNew", {})
vim.api.nvim_set_hl(ns_id, "DevIconMaven", {
  ctermfg = 52,
  fg = "#7a0d21"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDeletedIcon", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "DevIconIso", {
  ctermfg = 238,
  fg = "#453f43"
})
vim.api.nvim_set_hl(ns_id, "DevIconFreeBSD", {
  ctermfg = 160,
  fg = "#c90f02"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscriptBracket", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "DevIconMkv", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "DevIconEbook", {
  ctermfg = 94,
  fg = "#755836"
})
vim.api.nvim_set_hl(ns_id, "DevIconExe", {
  ctermfg = 124,
  fg = "#9f0500"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_command_to_lualine_b_command", {
  bg = "#c9cbd2",
  fg = "#004467"
})
vim.api.nvim_set_hl(ns_id, "DevIconHypridle", {
  ctermfg = 30,
  fg = "#008082"
})
vim.api.nvim_set_hl(ns_id, "DevIconHuff", {
  ctermfg = 56,
  fg = "#4242c7"
})
vim.api.nvim_set_hl(ns_id, "DevIconHpp", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconZst", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "lualine_c_normal", {
  bg = "#27292d",
  fg = "#76777c"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebm", {
  ctermfg = 94,
  fg = "#7e4c10"
})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_command_to_lualine_c_command", {
  bg = "#27292d",
  fg = "#c9cbd2"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsScriptfile", {
  ctermfg = 25,
  fg = "#325698"
})
vim.api.nvim_set_hl(ns_id, "LspReferenceWrite", {
  link = "LspReferenceText"
})
vim.api.nvim_set_hl(ns_id, "DevIconLocalization", {
  ctermfg = 24,
  fg = "#1c708e"
})
vim.api.nvim_set_hl(ns_id, "Question", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "typescriptCastKeyword", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptParenExp", {})
vim.api.nvim_set_hl(ns_id, "typescriptEventFuncCallArg", {})
vim.api.nvim_set_hl(ns_id, "typescriptASCII", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptEventString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "@label", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_hint_normal", {
  bg = "#c9cbd2",
  fg = "#004c73"
})
vim.api.nvim_set_hl(ns_id, "lualine_b_diagnostics_info_terminal", {
  bg = "#c9cbd2",
  fg = "#007373"
})
vim.api.nvim_set_hl(ns_id, "DevIconNuxtConfig", {
  ctermfg = 29,
  fg = "#00835f"
})
vim.api.nvim_set_hl(ns_id, "@string.regexp", {
  link = "@string.special"
})
vim.api.nvim_set_hl(ns_id, "typescriptRegexpString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptArray", {})
vim.api.nvim_set_hl(ns_id, "typescriptNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "typescriptObjectLabel", {
  link = "typescriptLabel"
})
vim.api.nvim_set_hl(ns_id, "typescriptStringProperty", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptComputedPropertyName", {})
vim.api.nvim_set_hl(ns_id, "typescriptObjectAsyncKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptObjectLiteral", {})
vim.api.nvim_set_hl(ns_id, "typescriptObjectColon", {})
vim.api.nvim_set_hl(ns_id, "typescriptObjectSpread", {})
vim.api.nvim_set_hl(ns_id, "typescriptUnaryOp", {})
vim.api.nvim_set_hl(ns_id, "typescriptTernaryOp", {})
vim.api.nvim_set_hl(ns_id, "typescriptTernary", {})
vim.api.nvim_set_hl(ns_id, "typescriptBinaryOp", {})
vim.api.nvim_set_hl(ns_id, "typescriptKeywordOp", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptImport", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "DevIconStp", {
  ctermfg = 58,
  fg = "#576342"
})
vim.api.nvim_set_hl(ns_id, "DevIconPrisma", {
  ctermfg = 61,
  fg = "#444da2"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidIdentifierScope", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "Function", {
  ctermfg = 6,
  fg = "NvimDarkCyan"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDelimiter", {
  link = "NvimInvalid"
})
vim.api.nvim_set_hl(ns_id, "FloatBorder", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidOptionName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "WinSeparator", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "typescriptMagicComment", {
  link = "SpecialComment"
})
vim.api.nvim_set_hl(ns_id, "typescriptRef", {
  link = "Include"
})
vim.api.nvim_set_hl(ns_id, "typescriptComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "typescriptTypeBrackets", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeParameters", {})
vim.api.nvim_set_hl(ns_id, "typescriptConstraint", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptUnion", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "LspInlayHint", {
  link = "NonText"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_replace", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconDefault_inactive", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_normal_to_lualine_c_normal", {})
vim.api.nvim_set_hl(ns_id, "qfSeparator", {})
vim.api.nvim_set_hl(ns_id, "qfFileName", {
  link = "Directory"
})
vim.api.nvim_set_hl(ns_id, "qfLineNr", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "qfError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_insert", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_replace", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconJs_inactive", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_error_normal_to_lualine_c_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_command_to_lualine_c_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_visual_to_lualine_b_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_hint_visual_to_lualine_c_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_visual_to_lualine_c_visual", {})
vim.api.nvim_set_hl(ns_id, "tsxTagName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "tsxIntrinsicTagName", {
  link = "htmlTagName"
})
vim.api.nvim_set_hl(ns_id, "htmlTagName", {
  link = "htmlStatement"
})
vim.api.nvim_set_hl(ns_id, "tsxAttrib", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "tsxEscJs", {
  link = "tsxEscapeJs"
})
vim.api.nvim_set_hl(ns_id, "tsxEscapeJs", {})
vim.api.nvim_set_hl(ns_id, "tsxCloseString", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "tsxTag", {
  link = "htmlTag"
})
vim.api.nvim_set_hl(ns_id, "htmlTag", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "tsxRegion", {})
vim.api.nvim_set_hl(ns_id, "tsxCloseTag", {
  link = "htmlTag"
})
vim.api.nvim_set_hl(ns_id, "tsxCommentInvalid", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "tsxFragment", {})
vim.api.nvim_set_hl(ns_id, "tsxBlockComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "tsxLineComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "tsxEntityPunct", {})
vim.api.nvim_set_hl(ns_id, "tsxEntity", {})
vim.api.nvim_set_hl(ns_id, "tsxEqual", {})
vim.api.nvim_set_hl(ns_id, "tsxString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptBraces", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptReserved", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "typescriptLabel", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "typescriptBlock", {})
vim.api.nvim_set_hl(ns_id, "typescriptDotNotation", {})
vim.api.nvim_set_hl(ns_id, "typescriptFuncCallArg", {})
vim.api.nvim_set_hl(ns_id, "typescriptTemplate", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptIndexExpr", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeArguments", {})
vim.api.nvim_set_hl(ns_id, "typescriptIdentifierName", {})
vim.api.nvim_set_hl(ns_id, "typescriptProp", {})
vim.api.nvim_set_hl(ns_id, "typescriptProperty", {})
vim.api.nvim_set_hl(ns_id, "typescriptDOMStyle", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDotStyleNotation", {})
vim.api.nvim_set_hl(ns_id, "typescriptParens", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "xmlInlineDTD", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "xmlDocTypeDecl", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "xmlDocType", {})
vim.api.nvim_set_hl(ns_id, "dtdFunction", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "dtdTag", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "dtdTagName", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "dtdError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "dtdComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "dtdString", {
  link = "dtdConstant"
})
vim.api.nvim_set_hl(ns_id, "dtdConstant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "dtdAttrType", {
  link = "dtdType"
})
vim.api.nvim_set_hl(ns_id, "dtdType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "dtdAttrDef", {
  link = "dtdType"
})
vim.api.nvim_set_hl(ns_id, "dtdEnum", {
  link = "dtdConstant"
})
vim.api.nvim_set_hl(ns_id, "dtdParamEntityInst", {
  link = "dtdConstant"
})
vim.api.nvim_set_hl(ns_id, "dtdParamEntityDecl", {
  link = "dtdType"
})
vim.api.nvim_set_hl(ns_id, "dtdCard", {
  link = "dtdFunction"
})
vim.api.nvim_set_hl(ns_id, "dtdTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "dtdParamEntityPunct", {
  link = "dtdType"
})
vim.api.nvim_set_hl(ns_id, "dtdParamEntityDPunct", {
  link = "dtdComment"
})
vim.api.nvim_set_hl(ns_id, "dtdEntityPunct", {
  link = "dtdType"
})
vim.api.nvim_set_hl(ns_id, "dtdEntity", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "xmlSyncComment", {})
vim.api.nvim_set_hl(ns_id, "htmlError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "htmlSpecialChar", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "javaScriptExpression", {
  link = "javaScript"
})
vim.api.nvim_set_hl(ns_id, "javaScript", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "htmlString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "htmlValue", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "htmlTagN", {})
vim.api.nvim_set_hl(ns_id, "htmlTagError", {
  link = "htmlError"
})
vim.api.nvim_set_hl(ns_id, "htmlEndTag", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "htmlArg", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "htmlEvent", {
  link = "javaScript"
})
vim.api.nvim_set_hl(ns_id, "htmlCssDefinition", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "htmlSpecialTagName", {
  link = "Exception"
})
vim.api.nvim_set_hl(ns_id, "htmlMathTagName", {
  link = "htmlTagName"
})
vim.api.nvim_set_hl(ns_id, "htmlSvgTagName", {
  link = "htmlTagName"
})
vim.api.nvim_set_hl(ns_id, "htmlMath", {})
vim.api.nvim_set_hl(ns_id, "htmlSvg", {})
vim.api.nvim_set_hl(ns_id, "htmlCommentError", {
  link = "htmlError"
})
vim.api.nvim_set_hl(ns_id, "htmlComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "htmlCommentNested", {
  link = "htmlError"
})
vim.api.nvim_set_hl(ns_id, "htmlPreStmt", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "htmlPreError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "htmlPreAttr", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "htmlPreProc", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "htmlPreProcAttrError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "htmlPreProcAttrName", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "htmlLink", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "htmlStrike", {})
vim.api.nvim_set_hl(ns_id, "htmlBoldUnderline", {})
vim.api.nvim_set_hl(ns_id, "htmlBoldItalic", {})
vim.api.nvim_set_hl(ns_id, "htmlBold", {})
vim.api.nvim_set_hl(ns_id, "htmlBoldUnderlineItalic", {})
vim.api.nvim_set_hl(ns_id, "htmlBoldItalicUnderline", {
  link = "htmlBoldUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlUnderlineBold", {
  link = "htmlBoldUnderline"
})
vim.api.nvim_set_hl(ns_id, "htmlUnderlineItalic", {})
vim.api.nvim_set_hl(ns_id, "htmlUnderline", {})
vim.api.nvim_set_hl(ns_id, "htmlUnderlineBoldItalic", {
  link = "htmlBoldUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlUnderlineItalicBold", {
  link = "htmlBoldUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlItalicBold", {
  link = "htmlBoldItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlItalicUnderline", {
  link = "htmlUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlItalic", {})
vim.api.nvim_set_hl(ns_id, "htmlItalicBoldUnderline", {
  link = "htmlBoldUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlItalicUnderlineBold", {
  link = "htmlBoldUnderlineItalic"
})
vim.api.nvim_set_hl(ns_id, "htmlLeadingSpace", {
  link = "None"
})
vim.api.nvim_set_hl(ns_id, "htmlH1", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "htmlH2", {
  link = "htmlH1"
})
vim.api.nvim_set_hl(ns_id, "htmlH3", {
  link = "htmlH2"
})
vim.api.nvim_set_hl(ns_id, "htmlH4", {
  link = "htmlH3"
})
vim.api.nvim_set_hl(ns_id, "htmlH5", {
  link = "htmlH4"
})
vim.api.nvim_set_hl(ns_id, "htmlH6", {
  link = "htmlH5"
})
vim.api.nvim_set_hl(ns_id, "htmlTitle", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "cssStyle", {})
vim.api.nvim_set_hl(ns_id, "htmlHead", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "htmlCssStyleComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "htmlScriptTag", {
  link = "htmlTag"
})
vim.api.nvim_set_hl(ns_id, "htmlEventSQ", {
  link = "htmlEvent"
})
vim.api.nvim_set_hl(ns_id, "htmlEventDQ", {
  link = "htmlEvent"
})
vim.api.nvim_set_hl(ns_id, "vbConditional", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "vbOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "vbBoolean", {
  link = "Boolean"
})
vim.api.nvim_set_hl(ns_id, "vbConst", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "vbRepeat", {
  link = "Repeat"
})
vim.api.nvim_set_hl(ns_id, "vbEvents", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "vbFunction", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "vbMethods", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "vbStatement", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "vbKeyword", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "vbTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "vbTypes", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "vbDefine", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "vbNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "vbFloat", {
  link = "Float"
})
vim.api.nvim_set_hl(ns_id, "vbString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "vbComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "vbLineLabel", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "vbLineNumber", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "vbTypeSpecifier", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "vbPreProc", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "vbError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "vbIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "cssTagName", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "cssSelectorOp", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssSelectorOp2", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssUnicodeEscape", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssStringQ", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "cssStringQQ", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "cssAttributeSelector", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "cssClassNameDot", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "cssClassName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "cssIdentifier", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "cssUnitDecorators", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueInteger", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueLength", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueAngle", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueTime", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssValueFrequency", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "cssColor", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "cssImportant", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssCustomProp", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "cssFunctionName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "cssURL", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "cssMathParens", {})
vim.api.nvim_set_hl(ns_id, "cssFunction", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "cssMathGroup", {})
vim.api.nvim_set_hl(ns_id, "cssFunctionComma", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptCommentTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "shellbang", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "typescriptStatementKeyword", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "typescriptConditionalElse", {
  link = "Conditional"
})
vim.api.nvim_set_hl(ns_id, "typescriptBoolean", {
  link = "Boolean"
})
vim.api.nvim_set_hl(ns_id, "typescriptForOperator", {
  link = "Repeat"
})
vim.api.nvim_set_hl(ns_id, "typescriptOperator", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptEnumKeyword", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptEnum", {})
vim.api.nvim_set_hl(ns_id, "typescriptVariable", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptIdentifier", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptPrototype", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptModule", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptExportType", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptExport", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptImportType", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidEnvironmentSigil", {
  link = "NvimInvalidOptionSigil"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidEnvironmentName", {
  link = "NvimInvalidIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidString", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringBody", {
  link = "NvimStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringQuote", {
  link = "NvimInvalidString"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidStringSpecial", {
  link = "NvimStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuote", {
  link = "NvimInvalidStringQuote"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedBody", {
  link = "NvimInvalidStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidSingleQuotedQuote", {
  link = "NvimInvalidStringSpecial"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuote", {
  link = "NvimInvalidStringQuote"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuotedBody", {
  link = "NvimInvalidStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidDoubleQuotedEscape", {
  link = "NvimInvalidStringSpecial"
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
vim.api.nvim_set_hl(ns_id, "NvimDoubleQuotedUnknownEscape", {
  link = "NvimInvalidValue"
})
vim.api.nvim_set_hl(ns_id, "typescriptString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptSpecial", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptTemplateSubstitution", {})
vim.api.nvim_set_hl(ns_id, "typescriptTemplateSB", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "typescriptObjectDestructure", {})
vim.api.nvim_set_hl(ns_id, "typescriptArrayDestructure", {})
vim.api.nvim_set_hl(ns_id, "typescriptDefaultParam", {})
vim.api.nvim_set_hl(ns_id, "typescriptDestructureVariable", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typescriptDestructureLabel", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptDestructureComma", {})
vim.api.nvim_set_hl(ns_id, "typescriptRestOrSpread", {})
vim.api.nvim_set_hl(ns_id, "typescriptAssign", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeAnnotation", {})
vim.api.nvim_set_hl(ns_id, "typescriptVariableDeclaration", {})
vim.api.nvim_set_hl(ns_id, "typescriptDestructureString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptDestructureAs", {})
vim.api.nvim_set_hl(ns_id, "typescriptConstructorType", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptTypeBracket", {})
vim.api.nvim_set_hl(ns_id, "typescriptParenthesizedType", {})
vim.api.nvim_set_hl(ns_id, "typescriptPredefinedType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptTypeReference", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptObjectType", {})
vim.api.nvim_set_hl(ns_id, "typescriptTupleType", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeQuery", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptStringLiteralType", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptTemplateLiteralType", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptReadonlyArrayKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptAssertType", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptTemplateSubstitutionType", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeOperator", {})
vim.api.nvim_set_hl(ns_id, "typescriptUserDefinedType", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptAccessibilityModifier", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptReadonlyModifier", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptConstructSignature", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptIndexSignature", {})
vim.api.nvim_set_hl(ns_id, "typescriptTupleLable", {
  link = "Label"
})
vim.api.nvim_set_hl(ns_id, "typescriptConditionalType", {})
vim.api.nvim_set_hl(ns_id, "typescriptGenericFunc", {})
vim.api.nvim_set_hl(ns_id, "typescriptFuncType", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptFunctionType", {})
vim.api.nvim_set_hl(ns_id, "typescriptFuncTypeArrow", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptGenericCall", {})
vim.api.nvim_set_hl(ns_id, "typescriptCall", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typescriptDecorator", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptFuncComma", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "typescriptMappedIn", {
  link = "Special"
})
vim.api.nvim_set_hl(ns_id, "typescriptAliasKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptAliasDeclaration", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalMethod", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalNumberDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptNumberStaticProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptNumberStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptNumberMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalStringDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptStringStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptStringMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalArrayDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptArrayStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptArrayMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalObjectDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptObjectStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptObjectMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalSymbolDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptSymbolStaticProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptSymbolStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFunctionMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalMathDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptMathStaticProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptMathStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalDateDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptDateStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDateMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalJSONDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptJSONStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalRegExpDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptRegExpStaticProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptRegExpProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptRegExpMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptES6MapProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptES6MapMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptES6SetProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptES6SetMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptProxyAPI", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalPromiseDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptPromiseStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPromiseMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptReflectMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptIntlMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptNodeGlobal", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptTestGlobal", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOM", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMWindowProp", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMWindowMethod", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMWindowEvent", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMWindowCons", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMNavigatorProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMNavigatorMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptServiceWorkerMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMLocationProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMLocationMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMHistoryProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMHistoryMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptConsoleMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptXHRGlobal", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptXHRProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptXHRMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGlobalURLDot", {})
vim.api.nvim_set_hl(ns_id, "typescriptURLStaticMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFileMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFileReaderProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFileReaderMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFileListMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBlobMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptURLUtilsProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptCryptoGlobal", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptSubtleCryptoMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptCryptoProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptCryptoMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptHeadersMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptRequestProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptRequestMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptResponseProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptResponseMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptServiceWorkerProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptCacheMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptEncodingGlobal", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptEncodingProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptEncodingMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptGeolocationMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptBOMNetworkProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentEvent", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentResponseMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentResponseProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentAddressProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptPaymentShippingOptionProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMNodeProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMNodeMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMNodeType", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMElemAttrs", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMElemFuncs", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMDocProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMDocMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMEventTargetMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMEventCons", {
  link = "Structure"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMEventProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMEventMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMStorage", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMStorageProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMStorageMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMFormProp", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMFormMethod", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptAnimationEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptCSSEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptDatabaseEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocumentEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptDOMMutationEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptDragEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptElementEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptFocusEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptFormEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptFrameEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptInputDeviceEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptMediaEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptMenuEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptNetworkEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptProgressEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptResourceEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptScriptEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptSensorEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptSessionHistoryEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptStorageEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptSVGEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptTabEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptTextEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptTouchEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptUpdateEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptValueChangeEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptViewEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptWebsocketEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptWindowEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptUncategorizedEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptServiceWorkerEvent", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "typescriptConstructor", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptMemberOptionality", {})
vim.api.nvim_set_hl(ns_id, "typescriptMember", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptMethodAccessor", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "typescriptClassStatic", {
  link = "StorageClass"
})
vim.api.nvim_set_hl(ns_id, "typescriptStringMember", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "typescriptComputedMember", {})
vim.api.nvim_set_hl(ns_id, "typescriptAsyncFuncKeyword", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptClassName", {})
vim.api.nvim_set_hl(ns_id, "typescriptClassExtends", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptClassBlock", {})
vim.api.nvim_set_hl(ns_id, "typescriptClassTypeParameter", {})
vim.api.nvim_set_hl(ns_id, "typescriptClassHeritage", {})
vim.api.nvim_set_hl(ns_id, "typescriptMixinComma", {})
vim.api.nvim_set_hl(ns_id, "typescriptClassTypeArguments", {})
vim.api.nvim_set_hl(ns_id, "typescriptArrowFunc", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceExtends", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceTypeParameter", {})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceHeritage", {})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceComma", {})
vim.api.nvim_set_hl(ns_id, "typescriptInterfaceTypeArguments", {})
vim.api.nvim_set_hl(ns_id, "typescriptTypeCast", {})
vim.api.nvim_set_hl(ns_id, "typescriptArrowFuncDef", {})
vim.api.nvim_set_hl(ns_id, "typescriptFuncImpl", {})
vim.api.nvim_set_hl(ns_id, "jsxRegion", {})
vim.api.nvim_set_hl(ns_id, "typescriptAsyncFunc", {
  link = "Keyword"
})
vim.api.nvim_set_hl(ns_id, "typescriptFuncName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "typescriptArrowFuncArg", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typescriptReturnAnnotation", {})
vim.api.nvim_set_hl(ns_id, "typescriptGenericImpl", {})
vim.api.nvim_set_hl(ns_id, "typescriptParamImpl", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typescriptSymbols", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocNGParam", {
  link = "typescriptDocParam"
})
vim.api.nvim_set_hl(ns_id, "typescriptType", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptFuncArg", {
  link = "PreProc"
})
vim.api.nvim_set_hl(ns_id, "typeScript", {})
vim.api.nvim_set_hl(ns_id, "htmlStatement", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "tsxNameSpace", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_insert", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_replace", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_x_filetype_DevIconTsx_inactive", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_visual_to_lualine_c_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_error_visual_to_lualine_c_visual", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_warn_normal_to_lualine_c_normal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_warn_command_to_lualine_c_command", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_terminal_to_lualine_b_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_terminal_to_lualine_c_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_a_terminal_to_lualine_c_terminal", {})
vim.api.nvim_set_hl(ns_id, "lualine_transitional_lualine_b_diagnostics_hint_insert_to_lualine_c_insert", {})
vim.api.nvim_set_hl(ns_id, "javascriptreact1", {})
vim.api.nvim_set_hl(ns_id, "xmlError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "xmlEntity", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "xmlString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "xmlAttribPunct", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "xmlEqual", {})
vim.api.nvim_set_hl(ns_id, "xmlAttrib", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "xmlNamespace", {
  link = "Tag"
})
vim.api.nvim_set_hl(ns_id, "xmlTagName", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "xmlTag", {
  link = "Function"
})
vim.api.nvim_set_hl(ns_id, "xmlEndTag", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "xmlCdata", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "xmlRegion", {})
vim.api.nvim_set_hl(ns_id, "xmlComment", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "xmlProcessing", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "xmlEntityPunct", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "xmlCommentStart", {
  link = "xmlComment"
})
vim.api.nvim_set_hl(ns_id, "xmlCommentError", {
  link = "Error"
})
vim.api.nvim_set_hl(ns_id, "xmlCommentPart", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "xmlTodo", {
  link = "Todo"
})
vim.api.nvim_set_hl(ns_id, "xmlCdataStart", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "xmlCdataEnd", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "xmlCdataCdata", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "xmlProcessingDelim", {
  link = "Comment"
})
vim.api.nvim_set_hl(ns_id, "xmlDocTypeKeyword", {
  link = "Statement"
})
vim.api.nvim_set_hl(ns_id, "typescriptDocB", {})
vim.api.nvim_set_hl(ns_id, "TelescopeMultiIcon", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "TelescopeMultiSelection", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "typescriptTypeParameter", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "typescriptGenericDefault", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeWindowPicker", {
  bg = "#4493c8",
  bold = true,
  ctermbg = 4,
  ctermfg = 15,
  fg = "#ededed"
})
vim.api.nvim_set_hl(ns_id, "@constant", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeGitDeleted", {})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormal", {
  link = "Normal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalFloat", {
  link = "NormalFloat"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeNormalFloatBorder", {
  link = "FloatBorder"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeLineNr", {
  link = "LineNr"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeEndOfBuffer", {
  link = "EndOfBuffer"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorColumn", {
  link = "CursorColumn"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorLine", {
  link = "CursorLine"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeCursorLineNr", {
  link = "CursorLineNr"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeStatusLine", {
  link = "StatusLine"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeStatusLineNC", {
  link = "StatusLineNC"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlink", {
  link = "Underlined"
})
vim.api.nvim_set_hl(ns_id, "NvimInvalidBinaryOperator", {
  link = "NvimInvalidOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeRootFolder", {
  link = "Title"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeSymlinkIcon", {
  link = "NvimTreeNormal"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderArrowClosed", {
  link = "NvimTreeIndentMarker"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeIndentMarker", {
  link = "NvimTreeFolderIcon"
})
vim.api.nvim_set_hl(ns_id, "NvimTreeFolderArrowOpen", {
  link = "NvimTreeIndentMarker"
})
vim.api.nvim_set_hl(ns_id, "DevIconDefault", {
  ctermfg = 66,
  fg = "#6d8086"
})
vim.api.nvim_set_hl(ns_id, "DevIconUI", {
  ctermfg = 27,
  fg = "#015bf0"
})
vim.api.nvim_set_hl(ns_id, "DevIconZorin", {
  ctermfg = 67,
  fg = "#0f79ae"
})
vim.api.nvim_set_hl(ns_id, "DevIconVanillaOS", {
  ctermfg = 58,
  fg = "#533f1a"
})
vim.api.nvim_set_hl(ns_id, "DevIconTrisquelGNULinux", {
  ctermfg = 25,
  fg = "#0f58b6"
})
vim.api.nvim_set_hl(ns_id, "DevIconConfig", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconIni", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "DevIconBzl", {
  ctermfg = 22,
  fg = "#447028"
})
vim.api.nvim_set_hl(ns_id, "DevIconFedora", {
  ctermfg = 17,
  fg = "#072a5e"
})
vim.api.nvim_set_hl(ns_id, "DevIconFennel", {
  ctermfg = 236,
  fg = "#33312b"
})
vim.api.nvim_set_hl(ns_id, "DevIconMl", {
  ctermfg = 130,
  fg = "#975122"
})
vim.api.nvim_set_hl(ns_id, "DevIconLeex", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconEndeavour", {
  ctermfg = 54,
  fg = "#5c2e8b"
})
vim.api.nvim_set_hl(ns_id, "DevIconAPL", {
  ctermfg = 94,
  fg = "#805200"
})
vim.api.nvim_set_hl(ns_id, "DevIconAvif", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconSha512", {
  ctermfg = 60,
  fg = "#5d5975"
})
vim.api.nvim_set_hl(ns_id, "DevIconElementary", {
  ctermfg = 24,
  fg = "#3b6081"
})
vim.api.nvim_set_hl(ns_id, "DevIconHexadecimal", {
  ctermfg = 26,
  fg = "#224abf"
})
vim.api.nvim_set_hl(ns_id, "DevIconDocx", {
  ctermfg = 26,
  fg = "#185abd"
})
vim.api.nvim_set_hl(ns_id, "DevIconIxx", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconDevuan", {
  ctermfg = 238,
  fg = "#404a52"
})
vim.api.nvim_set_hl(ns_id, "DevIconHxx", {
  ctermfg = 96,
  fg = "#6b4d83"
})
vim.api.nvim_set_hl(ns_id, "DevIconDot", {
  ctermfg = 24,
  fg = "#244a6a"
})
vim.api.nvim_set_hl(ns_id, "DevIconDeepin", {
  ctermfg = 24,
  fg = "#1d6fa5"
})
vim.api.nvim_set_hl(ns_id, "DevIconCss", {
  ctermfg = 24,
  fg = "#2c6ea3"
})
vim.api.nvim_set_hl(ns_id, "DevIconProlog", {
  ctermfg = 94,
  fg = "#725c2a"
})
vim.api.nvim_set_hl(ns_id, "DevIconDebian", {
  ctermfg = 88,
  fg = "#a80030"
})
vim.api.nvim_set_hl(ns_id, "DevIconScheme", {
  ctermfg = 236,
  fg = "#303030"
})
vim.api.nvim_set_hl(ns_id, "DevIconGroovy", {
  ctermfg = 239,
  fg = "#384e5d"
})
vim.api.nvim_set_hl(ns_id, "DevIconCs", {
  ctermfg = 58,
  fg = "#434d04"
})
vim.api.nvim_set_hl(ns_id, "DevIconCrystalLinux", {
  ctermfg = 129,
  fg = "#a900ff"
})
vim.api.nvim_set_hl(ns_id, "DevIconLess", {
  ctermfg = 54,
  fg = "#563d7c"
})
vim.api.nvim_set_hl(ns_id, "DevIconScalaScript", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "DevIconHtm", {
  ctermfg = 124,
  fg = "#aa391c"
})
vim.api.nvim_set_hl(ns_id, "DevIconCentos", {
  ctermfg = 89,
  fg = "#7a3d6a"
})
vim.api.nvim_set_hl(ns_id, "DevIconPpt", {
  ctermfg = 124,
  fg = "#983826"
})
vim.api.nvim_set_hl(ns_id, "DevIconPsb", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconPp", {
  ctermfg = 94,
  fg = "#80530d"
})
vim.api.nvim_set_hl(ns_id, "DevIconBigLinux", {
  ctermfg = 31,
  fg = "#127796"
})
vim.api.nvim_set_hl(ns_id, "DevIconHrl", {
  ctermfg = 89,
  fg = "#8a2b72"
})
vim.api.nvim_set_hl(ns_id, "DevIconReScriptInterface", {
  ctermfg = 125,
  fg = "#a33759"
})
vim.api.nvim_set_hl(ns_id, "DevIconRss", {
  ctermfg = 94,
  fg = "#7e4e1e"
})
vim.api.nvim_set_hl(ns_id, "DevIconArtix", {
  ctermfg = 31,
  fg = "#2b788f"
})
vim.api.nvim_set_hl(ns_id, "DevIconLiquid", {
  ctermfg = 58,
  fg = "#4a6024"
})
vim.api.nvim_set_hl(ns_id, "DevIconFsx", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconSass", {
  ctermfg = 125,
  fg = "#a33759"
})
vim.api.nvim_set_hl(ns_id, "DevIconArcoLinux", {
  ctermfg = 25,
  fg = "#44609d"
})
vim.api.nvim_set_hl(ns_id, "DevIconsbt", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "DevIconPy", {
  ctermfg = 94,
  fg = "#805e02"
})
vim.api.nvim_set_hl(ns_id, "DevIconQt", {
  ctermfg = 28,
  fg = "#2b8937"
})
vim.api.nvim_set_hl(ns_id, "DevIconArchlabs", {
  ctermfg = 238,
  fg = "#503f42"
})
vim.api.nvim_set_hl(ns_id, "DevIconSub", {
  ctermfg = 94,
  fg = "#805c0a"
})
vim.api.nvim_set_hl(ns_id, "DevIconSln", {
  ctermfg = 91,
  fg = "#643995"
})
vim.api.nvim_set_hl(ns_id, "DevIconSql", {
  ctermfg = 238,
  fg = "#494848"
})
vim.api.nvim_set_hl(ns_id, "FloatShadow", {
  bg = "NvimLightGrey4",
  blend = 80,
  ctermbg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconDump", {
  ctermfg = 238,
  fg = "#494848"
})
vim.api.nvim_set_hl(ns_id, "FloatShadowThrough", {
  bg = "NvimLightGrey4",
  blend = 100,
  ctermbg = 0
})
vim.api.nvim_set_hl(ns_id, "DevIconCMake", {
  ctermfg = 59,
  fg = "#526064"
})
vim.api.nvim_set_hl(ns_id, "MatchParen", {
  bg = "NvimLightGrey4",
  bold = true,
  cterm = {
    bold = true,
    underline = true
  }
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugClear", {
  bg = "NvimLightYellow",
  ctermbg = 3,
  ctermfg = 15
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugComposed", {
  bg = "NvimLightGreen",
  ctermbg = 2,
  ctermfg = 15
})
vim.api.nvim_set_hl(ns_id, "RedrawDebugRecompose", {
  bg = "NvimLightRed",
  ctermbg = 1,
  ctermfg = 15
})
vim.api.nvim_set_hl(ns_id, "DevIconRar", {
  ctermfg = 94,
  fg = "#76520c"
})
vim.api.nvim_set_hl(ns_id, "DevIconAlpine", {
  ctermfg = 24,
  fg = "#0d597f"
})
vim.api.nvim_set_hl(ns_id, "DevIconRake", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "DevIconSolidity", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DiagnosticUnderlineOk", {
  cterm = {
    underline = true
  },
  sp = "NvimDarkGreen",
  underline = true
})
vim.api.nvim_set_hl(ns_id, "NvimInternalError", {
  bg = "Red",
  ctermbg = 9,
  ctermfg = 9,
  fg = "Red"
})
vim.api.nvim_set_hl(ns_id, "DevIconAi", {
  ctermfg = 58,
  fg = "#666620"
})
vim.api.nvim_set_hl(ns_id, "DevIconLinux", {
  ctermfg = 236,
  fg = "#333332"
})
vim.api.nvim_set_hl(ns_id, "DevIconTypeScript", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "DevIconVala", {
  ctermfg = 54,
  fg = "#562b86"
})
vim.api.nvim_set_hl(ns_id, "DevIconReScript", {
  ctermfg = 88,
  fg = "#992e33"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignment", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "NvimPlainAssignment", {
  link = "NvimAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimAugmentedAssignment", {
  link = "NvimAssignment"
})
vim.api.nvim_set_hl(ns_id, "DevIconLog", {
  ctermfg = 239,
  fg = "#4a4a4a"
})
vim.api.nvim_set_hl(ns_id, "DevIconVue", {
  ctermfg = 22,
  fg = "#466024"
})
vim.api.nvim_set_hl(ns_id, "NvimAssignmentWithConcatenation", {
  link = "NvimAugmentedAssignment"
})
vim.api.nvim_set_hl(ns_id, "NvimOperator", {
  link = "Operator"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryOperator", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryPlus", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimUnaryMinus", {
  link = "NvimUnaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconGemspec", {
  ctermfg = 52,
  fg = "#701516"
})
vim.api.nvim_set_hl(ns_id, "NvimBinaryOperator", {
  link = "NvimOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimComparison", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimComparisonModifier", {
  link = "NvimComparison"
})
vim.api.nvim_set_hl(ns_id, "DevIconZig", {
  ctermfg = 94,
  fg = "#7b4d0e"
})
vim.api.nvim_set_hl(ns_id, "DevIconPxi", {
  ctermfg = 24,
  fg = "#3c6f98"
})
vim.api.nvim_set_hl(ns_id, "NvimConcat", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconPxd", {
  ctermfg = 24,
  fg = "#3c6f98"
})
vim.api.nvim_set_hl(ns_id, "NvimOr", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "NvimAnd", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconGo", {
  ctermfg = 24,
  fg = "#36677c"
})
vim.api.nvim_set_hl(ns_id, "NvimDivision", {
  link = "NvimBinaryOperator"
})
vim.api.nvim_set_hl(ns_id, "DevIconEnv", {
  ctermfg = 236,
  fg = "#32310d"
})
vim.api.nvim_set_hl(ns_id, "DevIconXpi", {
  ctermfg = 124,
  fg = "#bf1401"
})
vim.api.nvim_set_hl(ns_id, "Operator", {
  fg = "NvimDarkGrey2"
})
vim.api.nvim_set_hl(ns_id, "NvimParenthesis", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimLambda", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimNestingParenthesis", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimCallingParenthesis", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscript", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "Boolean", {
  link = "Constant"
})
vim.api.nvim_set_hl(ns_id, "NvimSubscriptColon", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimCurly", {
  link = "NvimSubscript"
})
vim.api.nvim_set_hl(ns_id, "NvimContainer", {
  link = "NvimParenthesis"
})
vim.api.nvim_set_hl(ns_id, "NvimDict", {
  link = "NvimContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimList", {
  link = "NvimContainer"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifier", {
  link = "Identifier"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierScope", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierScopeDelimiter", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimIdentifierKey", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimColon", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimComma", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimArrow", {
  link = "Delimiter"
})
vim.api.nvim_set_hl(ns_id, "DevIconWavPack", {
  ctermfg = 24,
  fg = "#0075aa"
})
vim.api.nvim_set_hl(ns_id, "NvimNumber", {
  link = "Number"
})
vim.api.nvim_set_hl(ns_id, "NvimFloat", {
  link = "NvimNumber"
})
vim.api.nvim_set_hl(ns_id, "NvimNumberPrefix", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionSigil", {
  link = "Type"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "DevIconWebOpenFontFormat", {
  ctermfg = 236,
  fg = "#2f2f2f"
})
vim.api.nvim_set_hl(ns_id, "NvimOptionScopeDelimiter", {
  link = "NvimIdentifierScopeDelimiter"
})
vim.api.nvim_set_hl(ns_id, "NvimEnvironmentSigil", {
  link = "NvimOptionSigil"
})
vim.api.nvim_set_hl(ns_id, "NvimEnvironmentName", {
  link = "NvimIdentifier"
})
vim.api.nvim_set_hl(ns_id, "NvimString", {
  link = "String"
})
vim.api.nvim_set_hl(ns_id, "DevIconTorrent", {
  ctermfg = 23,
  fg = "#226654"
})
vim.api.nvim_set_hl(ns_id, "NvimStringQuote", {
  link = "NvimString"
})
vim.api.nvim_set_hl(ns_id, "NvimStringSpecial", {
  link = "SpecialChar"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuote", {
  link = "NvimStringQuote"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedBody", {
  link = "NvimStringBody"
})
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedQuote", {
  link = "NvimStringSpecial"
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
vim.api.nvim_set_hl(ns_id, "NvimSingleQuotedUnknownEscape", {
  link = "NvimInternalError"
})
if vim.o.background == "light" then
else
end