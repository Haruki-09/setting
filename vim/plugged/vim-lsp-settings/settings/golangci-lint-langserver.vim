augroup vim_lsp_settings_golangci_lint_langserver
  au!
  LspRegisterServer {
      \ 'name': 'golangci-lint-langserver',
      \ 'cmd': {server_info->lsp_settings#get('golangci-lint-langserver', 'cmd', [lsp_settings#exec_path('golangci-lint-langserver')]+lsp_settings#get('golangci-lint-langserver', 'args', []))},
      \ 'root_uri':{server_info->lsp_settings#get('golangci-lint-langserver', 'root_uri', lsp_settings#root_uri('golangci-lint-langserver'))},
      \ 'initialization_options': lsp_settings#get('golangci-lint-langserver', 'initialization_options', {'command': ['golangci-lint', 'run', '--enable-all', '--disable', 'lll', '--out-format', 'json', '--issues-exit-code=1']}),
      \ 'allowlist': lsp_settings#get('golangci-lint-langserver', 'allowlist', ['go']),
      \ 'blocklist': lsp_settings#get('golangci-lint-langserver', 'blocklist', []),
      \ 'config': lsp_settings#get('golangci-lint-langserver', 'config', lsp_settings#server_config('golangci-lint-langserver')),
      \ 'workspace_config': lsp_settings#get('golangci-lint-langserver', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('golangci-lint-langserver', 'semantic_highlight', {}),
      \ }
augroup END
