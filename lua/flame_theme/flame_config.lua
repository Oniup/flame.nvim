--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP"`Yb
--    8888888P"                          I8  8I
--       88                              I8  8"
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8"8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8"  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8"_   8) ,d8     I8,
--  "Y8P"  "Y888888P""Y88P"`Y8P" "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require("lush").ify()`

local lush = require("lush")
-- local hsl = lush.hsl

local colors = {
    background1 = "#131515",
    background2 = "#181b1a",
    background3 = "#222625",
    very_light_green = "#A6A499",
    light_grey = "#A69A8D",
    very_light_grey = "#bfb2a4",
    black = "#000000",

    dark_green = "#9aad6c",
    light_green = "#b1ca78",
    pink = "#ee617b",
    red = "#e74e3d",
    orange = "#fe7442",
    grey = "#9a8d8d",
    light_blue = "#82979C",
    dark_grey = "#59544D",
    yellow = "#f6ba41",
}


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the "Normal" group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups
        --
        ColorColumn { fg = colors.background3, bg = colors.background3 },   -- Columns set with "colorcolumn"
        Conceal { fg = colors.yellow, bg = colors.background3 },      -- Placeholder characters substituted for concealed text (see "conceallevel")
        -- Cursor       {}, -- Character under the cursor
        -- lCursor      {}, -- Character under the cursor when |language-mapping| is used (see "guicursor")
        -- CursorIM     {}, -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { bg = colors.background3 },  -- Screen-column at the cursor, when "cursorcolumn" is set.
        CursorLine { bg = colors.background3 },    -- Screen-line at the cursor, when "cursorline" is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory { fg = colors.light_blue },      -- Directory names (and other special names in listings)
        DiffAdd { fg = colors.light_green },       -- Diff mode: Added line |diff.txt|
        DiffChange { fg = colors.yellow },         -- Diff mode: Changed line |diff.txt|
        DiffDelete { fg = colors.red },            -- Diff mode: Deleted line |diff.txt|
        DiffText { fg = colors.orange },           -- Diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer { fg = colors.background1 },   -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { fg = "#FFFF00" }, -- Cursor in a focused terminal
        -- TermCursorNC { fg = "#FFFF00" }, -- Cursor in an unfocused terminal
        ErrorMsg { fg = colors.red },                               -- Error messages on the command line
        VertSplit { fg = colors.grey, bg = colors.background1 },    -- Column separating vertically splpt windows
        Folded {},                                                  -- Line used for closed folds
        FoldColumn { bg = colors.background1 },                     -- "foldcolumn"
        SignColumn { bg = colors.background1 },                     -- Column where |signs| are displayed
        -- IncSearch    { fg = "#FFFF00" }, -- "incsearch" highlighting; also used for the text replaced with ":s///c"
        Substitute { fg = colors.black, bg = colors.yellow },       -- |:substitute| replacement text highlighting
        LineNr { fg = colors.dark_grey },                           -- Line number for ":number" and ":#" commands, and when "number" or "relativenumber" option is set.
        CursorLineNr { fg = colors.grey },                          -- Like LineNr when "cursorline" or "relativenumber" is set for the cursor line.
        MatchParen { bg = colors.dark_grey },                       -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- "showmode" message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of "display"
        -- MoreMsg      { }, -- |more-prompt|
        NonText { fg = colors.grey },                                          -- "@" at the end of the window, characters from "showbreak" and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn"t fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal { fg = colors.light_grey, bg = colors.background1 },            -- Normal text
        NormalFloat { fg = colors.very_light_grey, bg = colors.background2 },  -- Normal text in floating windows.
        NormalNC { fg = colors.very_light_grey, bg = colors.background1 },     -- normal text in non-current windows
        Pmenu { fg = colors.very_light_grey, bg = colors.background2 },        -- Popup menu: Normal item.
        PmenuSel { fg = colors.very_light_grey, bg = colors.background3 },     -- Popup menu: Selected item.
        PmenuSbar { bg = colors.background3 },                                 -- Popup menu: Scrollbar.
        PmenuThumb { fg = colors.black, bg = colors.very_light_grey },         -- Popup menu: Thumb of the scrollbar.
        -- Question     { }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine { fg = colors.black, bg = colors.yellow },                -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search { fg = colors.black, bg = colors.yellow },                      -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not "listchars" whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        -- StatusLine   { }, -- Status line of current window
        -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine {},                                                        -- Tab pages line, not active tab page label
        TabLineFill {},                                                    -- Tab pages line, where there are no labels
        TabLineSel { bg = colors.background1 },                            -- Tab pages line, active tab page label
        Title { fg = colors.orange },                                      -- Titles for output from ":set all", ":autocmd" etc.
        Visual { bg = colors.background3 },                                -- Visual mode selection
        VisualNOS { bg = colors.background3 },                             -- Visual mode selection when vim is "Not Owning the Selection".
        Whitespace { fg = colors.dark_grey },                              -- "nbsp", "space", "tab" and "trail" in "listchars"
        WarningMsg { fg = colors.yellow },                                 -- Warning messages
        Winseparator { fg = colors.background1, bg = colors.background1 }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        WildMenu { fg = colors.black, bg = colors.yellow },                -- Current match in "wildmenu" completion

        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Comment { fg = colors.dark_grey },                    -- Any comment

        Constant { fg = colors.pink },                        -- (*) Any constant
        String { fg = colors.dark_green },                    --   A string constant: "this is a string"
        Character { fg = colors.pink },                       --   A character constant: "c", "\n"
        Number { fg = colors.pink },                          --   A number constant: 234, 0xff
        Boolean { fg = colors.pink },                         --   A boolean constant: TRUE, false
        Float { fg = colors.pink },                           --   A floating point constant: 2.3e10

        Identifier { fg = colors.very_light_green },          -- (*) Any variable name
        Function { fg = colors.orange, italic = true },       --   Function name (also: methods for classes)

        Statement { fg = colors.red },                        -- (*) Any statement
        Conditional { fg = colors.red },                      --   if, then, else, endif, switch, etc.
        Repeat { fg = colors.red },                           --   for, do, while, etc.
        Label { fg = colors.red },                            --   case, default, etc.
        Operator { fg = colors.light_blue },                  --   "sizeof", "+", "*", etc.
        Keyword { fg = colors.red },                          --   any other keyword
        Exception { fg = colors.red },                        --   try, catch, throw

        PreProc { fg = colors.grey },                         -- (*) Generic Preprocessor
        Include { fg = colors.grey },                         --   Preprocessor #include
        Define { fg = colors.grey },                          --   Preprocessor #define
        Macro { fg = colors.pink },                           --   Same as Define
        PreCondit { fg = colors.grey },                       --   Preprocessor #if, #else, #endif, etc.

        Type { fg = colors.red },                             -- (*) int, long, char, etc.
        StorageClass { fg = colors.yellow },                  --   static, register, volatile, etc.
        Structure { fg = colors.yellow },                     --   struct, union, enum, etc.
        Typedef { fg = colors.yellow },                       --   A typedef

        Special { fg = colors.grey },                         -- (*) Any special symbol
        SpecialChar { fg = colors.light_blue },               --   Special character in a constant
        Tag {},                                               --   You can use CTRL-] on this
        Delimiter {},                                         --   Character that needs attention
        SpecialComment { fg = colors.light_blue },            --   Special things inside a comment (e.g. "\n")
        Debug {},                                             --   Debugging statements
        --
        Underlined { gui = "underline" },                     -- Text that stands out, HTML links
        Ignore {},                                            -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error {},                                             -- Any erroneous construct
        Todo { bg = colors.grey },                            -- Anything that needs extra attention; mostly the keywords TODO: FIXME and XXX

        TelescopeNormal { bg = colors.background2 },
        TelescopeBorder { fg = colors.background2, bg = colors.background2 },
        TelescopePromptPrefix { fg = colors.red, bg = colors.background3 },
        TelescopePromptNormal { bg = colors.background3 },
        TelescopePromptTitle { fg = colors.black, bg = colors.orange },
        TelescopePromptBorder { fg = colors.background3, bg = colors.background3 },
        TelescopePreviewTitle { fg = colors.black, bg = colors.yellow },
        TelescopeResultsTitle { fg = colors.background2, bg = colors.background2 },
        TelescopeSelectionCaret { fg = colors.background2, bg = colors.background2 },
        CmpItemAbbrMatch { fg = colors.yellow },
        CmpItemAbbrMatchFuzzy { fg = colors.orange },
        CmpItemKindArray { fg = colors.black, bg = colors.grey },
        CmpItemKindBoolean { fg = colors.black, bg = colors.red },
        CmpItemKindClass { fg = colors.black, bg = colors.yellow },
        CmpItemKindColor { fg = colors.black, bg = colors.pink },
        CmpItemKindConstant { fg = colors.black, bg = colors.pink },
        CmpItemKindConstructor { fg = colors.black, bg = colors.yellow },
        CmpItemKindCopilot { fg = colors.black, bg = colors.light_blue },
        CmpItemKindEnum { fg = colors.black, bg = colors.yellow },
        CmpItemKindEnumMember { fg = colors.black, bg = colors.pink },
        CmpItemKindEvent { fg = colors.black, bg = colors.dark_green },
        CmpItemKindField { fg = colors.black, bg = colors.grey },
        CmpItemKindFile { fg = colors.black, bg = colors.grey },
        CmpItemKindFolder { fg = colors.black, bg = colors.grey },
        CmpItemKindPackage { fg = colors.black, bg = colors.grey },
        CmpItemKindProperty { fg = colors.black, bg = colors.grey },
        CmpItemKindText { fg = colors.black, bg = colors.grey },
        CmpItemKindFunction { fg = colors.black, bg = colors.orange },
        CmpItemKindInterface { fg = colors.black, bg = colors.yellow },
        CmpItemKindKeyword { fg = colors.black, bg = colors.red },
        CmpItemKindReference { fg = colors.black, bg = colors.red },
        CmpItemKindTypeParameter { fg = colors.black, bg = colors.red },
        CmpItemKindMethod { fg = colors.black, bg = colors.orange },
        CmpItemKindModule { fg = colors.black, bg = colors.yellow },
        CmpItemKindNamespace { fg = colors.black, bg = colors.yellow },
        CmpItemKindNull { fg = colors.black, bg = colors.pink },
        CmpItemKindNumber { fg = colors.black, bg = colors.pink },
        CmpItemKindObject { fg = colors.black, bg = colors.yellow },
        CmpItemKindStruct { fg = colors.black, bg = colors.yellow },
        CmpItemKindOperator { fg = colors.black, bg = colors.light_blue },
        CmpItemKindSnippet { fg = colors.black, bg = colors.light_blue },
        CmpItemKindString { fg = colors.black, bg = colors.dark_green },
        CmpItemKindUnit { fg = colors.black, bg = colors.dark_green },
        CmpItemKindValue { fg = colors.black, bg = colors.pink },
        CmpItemKindVariable { fg = colors.black, bg = colors.very_light_green },
        NvimTreeNormal { bg = colors.background2 },

        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client"s documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- LspReferenceText            { } , -- Used for highlighting "text" references
        -- LspReferenceRead            { } , -- Used for highlighting "read" references
        -- LspReferenceWrite           { } , -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        LspSignatureActiveParameter { bg = colors.background3 },      -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError { fg = colors.red },                        -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn { fg = colors.yellow },                      -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo { fg = colors.dark_green },                  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint { fg = colors.grey },                        -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
        -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
        -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
        -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
        -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
        -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
        -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym("@text.literal")
        -- sym"@text.literal"
        -- sym"@text.literal"
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        sym "@text.literal" { fg = colors.dark_grey },                                  -- Comment
        sym "@text.reference" { fg = colors.light_grey },                               -- Identifier
        sym "@text.title" { fg = colors.orange, bold = true, italic = true },           -- Title
        sym "@text.uri" { fg = colors.light_blue, gui = "underline" },                  -- Underlined
        sym "@text.underline" { fg = colors.light_blue, gui = "underline" },            -- Underlined
        sym "@text.todo" { fg = colors.light_green },                                   -- Todo
        sym "@comment" { fg = colors.dark_grey },                                       -- Comment
        sym "@punctuation" { fg = color.grey },                                         -- Delimiter
        sym "@constant" { fg = colors.pink },                                           -- Constant
        sym "@constant.builtin" { fg = colors.pink },                                   -- Special
        sym "@constant.macro" { fg = colors.pink },                                     -- Define
        sym "@define" { fg = colors.grey },                                             -- Define
        sym "@macro" { fg = colors.pink },                                              -- Macro
        sym "@string" { fg = colors.dark_green },                                       -- String
        sym "@string.escape" { fg = colors.pink },                                      -- SpecialChar
        sym "@string.special" { fg = colors.pink },                                     -- SpecialChar
        sym "@character" { fg = colors.dark_green },                                    -- Character
        sym "@character.special" { fg = colors.pink },                                  -- SpecialChar
        sym "@number" { fg = colors.pink },                                             -- Number
        sym "@boolean" { fg = colors.pink },                                            -- Boolean
        sym "@float" { fg = colors.pink },                                              -- Float
        sym "@function" { fg = colors.orange, italic = true },                          -- Function
        sym "@function.builtin" { fg = colors.orange, italic = true },                  -- Special
        sym "@function.macro" { fg = colors.pink },                                     -- Macro
        sym "@parameter" { fg = colors.very_light_green },                              -- Identifier
        sym "@method" { fg = colors.orange, italic = true },                            -- Function
        sym "@field" { fg = colors.grey },                                              -- Identifier
        sym "@property" { fg = colors.very_light_green },                               -- Identifier
        sym "@constructor" { fg = colors.grey },                                        -- Special
        sym "@conditional" { fg = colors.red },                                         -- Conditional
        sym "@repeat" { fg = colors.red },                                              -- Repeat
        sym "@label" { fg = colors.red },                                               -- Label
        sym "@operator" { fg = colors.light_blue },                                     -- Operator
        sym "@keyword" { fg = colors.red },                                             -- Keyword
        sym "@exception" { fg = colors.red },                                           -- Exception
        sym "@variable" { fg = colors.very_light_green },                               -- Identifier
        -- sym"@type"              { fg = "#FFFF00" }, -- Type
        sym "@type.definition" { fg = colors.yellow },                                  -- Typedef
        sym "@storageclass" { fg = colors.yellow },                                     -- StorageClass
        sym "@structure" { fg = colors.yellow },                                        -- Structure
        sym "@namespace" { fg = colors.yellow },                                        -- Identifier
        -- sym"@include"           { fg = "#FFFF00" }, -- Include
        -- sym"@preproc"           { fg = "#FFFF00" }, -- PreProc
        -- sym"@debug"             { fg = "#FFFF00" }, -- Debug
        -- sym"@tag"               { fg = "#FFFF00", bg = "#FFFF00" }, -- Tag
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
