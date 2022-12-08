
BEGIN {
descriptions["max_width"] = "Maximum width of each line."
descriptions["hard_tabs"] = "Use tab characters for indentation, spaces for alignment."
descriptions["tab_spaces"] = "Number of spaces per tab."
descriptions["newline_style"] = "Use Unix or Windows line endings."
descriptions["indent_style"] = "Indent on expressions or items."
descriptions["use_small_heuristics"] = "This option can be used to simplify the management and bulk updates of the\n# granular width configuration settings."
descriptions["fn_call_width"] = "Maximum width of the args of a function call before falling back to vertical\n# formatting."
descriptions["attr_fn_like_width"] = "Maximum width of the args of a function-like attributes before falling\n# back to vertical formatting."
descriptions["struct_lit_width"] = "Maximum width in the body of a struct literal before falling back to vertical\n# formatting."
descriptions["struct_variant_width"] = "Maximum width in the body of a struct variant before falling back to\n# vertical formatting."
descriptions["array_width"] = "Maximum width of an array literal before falling back to vertical formatting."
descriptions["chain_width"] = "Maximum width of a chain to fit on one line."
descriptions["single_line_if_else_max_width"] = "Maximum line length for single line if-else expressions."
descriptions["wrap_comments"] = "Break comments to fit on the line."
descriptions["format_code_in_doc_comments"] = "Format code snippet included in doc comments."
descriptions["doc_comment_code_block_width"] = "Max width for code snippets included in doc comments. Only used if\n# format_code_in_doc_comments is true."
descriptions["comment_width"] = "Maximum length of comments. No effect unless wrap_comments = true."
descriptions["normalize_comments"] = "Convert /* */ comments to // comments where possible."
descriptions["normalize_doc_attributes"] = "Convert #![doc] and #[doc] attributes to //! and /// doc comments."
descriptions["format_strings"] = "Format string literals where necessary."
descriptions["format_macro_matchers"] = "Format the metavariable matching patterns in macros."
descriptions["format_macro_bodies"] = "Format the bodies of macros."
descriptions["hex_literal_case"] = "Control the case of the letters in hexadecimal literal values."
descriptions["empty_item_single_line"] = "Put empty-body functions and impls on a single line."
descriptions["struct_lit_single_line"] = "Put small struct literals on a single line."
descriptions["fn_single_line"] = "Put single-expression functions on a single line."
descriptions["where_single_line"] = "Forces the where clause to be laid out on a single line."
descriptions["imports_indent"] = "Indent style of imports."
descriptions["imports_layout"] = "Item layout inside a imports block."
descriptions["imports_granularity"] = "Controls how imports are structured in use statements. Imports will be merged\n# or split to the configured level of granularity."
descriptions["group_imports"] = "Controls the strategy for how consecutive imports are grouped together."
descriptions["reorder_imports"] = "Reorder import and extern crate statements alphabetically in groups (a group\n# is separated by a newline)."
descriptions["reorder_modules"] = "Reorder mod declarations alphabetically in group."
descriptions["reorder_impl_items"] = "Reorder impl items. type and const are put first, then macros and methods."
descriptions["type_punctuation_density"] = "Determines if + or = are wrapped in spaces in the punctuation of types."
descriptions["space_before_colon"] = "Leave a space before the colon."
descriptions["space_after_colon"] = "Leave a space after the colon."
descriptions["spaces_around_ranges"] = "Put spaces around the .., ..=, and ... range operators."
descriptions["binop_separator"] = "Where to put a binary operator when a binary expression goes multiline."
descriptions["remove_nested_parens"] = "Remove nested parens."
descriptions["combine_control_expr"] = "Combine control expressions with function calls."
descriptions["short_array_element_width_threshold"] = "The width threshold for an array element to be considered short. If the\n# length of every element in an array is below this threshold then the array\n# can be formatted in mixed/compressed styles, otherwise the array elements\n# will have to be formatted vertically."
descriptions["overflow_delimited_expr"] = "When structs, slices, arrays, and block/array-like macros are used as the\n# last argument in an expression list, allow them to overflow (like blocks\n# and closures) instead of being indented on a new line."
descriptions["struct_field_align_threshold"] = "The maximum diff of width between struct fields to be aligned with each other."
descriptions["enum_discrim_align_threshold"] = "The maximum length of a discriminant-bearing enum variant that gets vertically\n# aligned with others. Variants without discriminants would be ignored for the\n# purpose of alignment."
descriptions["match_arm_blocks"] = "Controls whether arm bodies are wrapped in cases where the first line of the\n# body cannot fit on the same line as the => operator."
descriptions["match_arm_leading_pipes"] = "Controls whether to include a leading pipe on match arms."
descriptions["force_multiline_blocks"] = "Force multiline closure and match arm bodies to be wrapped in a block."
descriptions["fn_args_layout"] = "This option is DEPRECATED and has been renamed to fn_params_layout."
descriptions["brace_style"] = "Brace style for items."
descriptions["control_brace_style"] = "Brace style for control flow constructs."
descriptions["trailing_semicolon"] = "Add trailing semicolon after break, continue and return."
descriptions["trailing_comma"] = "How to handle trailing commas for lists."
descriptions["match_block_trailing_comma"] = "Put a trailing comma after a block based match arm (non-block arms are not\n# affected)"
descriptions["blank_lines_upper_bound"] = "Maximum number of blank lines which can be put between items."
descriptions["blank_lines_lower_bound"] = "Minimum number of blank lines which must be put between items."
descriptions["edition"] = "Specifies which edition is used by the parser."
descriptions["version"] = "Which version of the formatting rules to use.\n#  - Version::One is backwards-compatible with Rustfmt 1.0.\n#  - Other versions are only backwards compatible within a major version number."
descriptions["inline_attribute_width"] = "Write an item and its attribute on the same line if their combined width is\n# below a threshold"
descriptions["format_generated_files"] = "Format generated files. A file is considered generated if any of the first\n# five lines contain a @generated\n# comment marker."
descriptions["merge_derives"] = "Merge multiple derives into a single one."
descriptions["use_try_shorthand"] = "Replace uses of the try! macro by the ? shorthand."
descriptions["use_field_init_shorthand"] = "Use field initialize shorthand if possible."
descriptions["force_explicit_abi"] = "Always print the abi for extern items."
descriptions["condense_wildcard_suffixes"] = "Replace strings of _ wildcards by a single .. in tuple patterns"
descriptions["color"] = "Whether to use colored output or not."
descriptions["required_version"] = "Require a specific version of rustfmt. If you want to make sure that the\n# specific version of rustfmt is used in your CI, use this option."
descriptions["unstable_features"] = "Enable unstable features on the unstable channel."
descriptions["disable_all_formatting"] = "Don't reformat anything. NOTE: this option may be soft-deprecated in the\n# future once the ignore option is stabilized."
descriptions["skip_children"] = "Don't reformat out of line modules."
descriptions["hide_parse_errors"] = "Do not show parse errors if the parser failed to parse files."
descriptions["error_on_line_overflow"] = "Error if Rustfmt is unable to get all lines within max_width, except for\n# comments and string literals."
descriptions["error_on_unformatted"] = "Error if unable to get comments or string literals within max_width, or they\n# are left with trailing whitespaces."
descriptions["ignore"] = "Skip formatting files and directories that match the specified pattern. The\n# pattern format is the same as .gitignore. Be sure to use Unix-style ('/'\n# forwardslash) paths. This path style will work on all platforms.\n# Windows-style ('\\' backslash) paths are not supported."
descriptions["emit_mode"] = "Internal option. DO NOT USE."
descriptions["make_backup"] = "Internal option, use --backup argument to rustfmt instead."

    print "# ----------------------------------------------------------------------------"
    print "#                             rustfmt.toml - config"
    print "# ============================================================================"
    print "#"
    print "#                Generated using the rustfmt-expand.awk script."
    print "#                  https://github.com/ravyne/rustfmt-expander"
    print "#"
    print "# ----------------------------------------------------------------------------"
    print ""
}

/* pass comments through */
$1 ~ /^#/ {print}

/* expand rustfmt key-value pairs, assuming defaults are set, */
/* as from "rustfmt --print-config default PATH" */
$2 ~ /=/ {
    printf "# %s\n", descriptions[$1]
    printf "# Default: %s\n", $3
    printf "#   %s =\n", $1
    print ""
}

!$2 ~ /=/ {
    print
}

