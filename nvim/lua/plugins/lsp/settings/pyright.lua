return {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = 'file',
        useLibraryCodeForTypes = true,
        typeCheckingMode = 'off',
        autoImportCompletions = true,
        diagnosticSeverityOverrides = {
          reportGeneralTypeIssues = 'none',
          reportOptionalMemberAccess = 'none',
          reportOptionalSubscript = 'none',
          reportPrivateImportUsage = 'none',
          reportUnboundVariable = 'none',
          reportOptionalContextManager = 'none',
          reportUnusedVariable = 'none'
        }
      }
    },
    pyright = {
      disableOrganizeImports = true,
      analysis = {
        autoImportCompletions = true,
        typeCheckingMode = 'basic',
        diagnosticMode = 'workspace',
        useLibraryCodeForTypes = true,
        diagnosticSeverityOverrides = {
          reportGeneralTypeIssues = 'none',
          reportOptionalMemberAccess = 'none',
          reportOptionalSubscript = 'none',
          reportPrivateImportUsage = 'none',
          reportUnboundVariable = 'none',
          reportOptionalContextManager = 'none',
          reportUnusedVariable = 'none'
        }
      }
    }
  }

}
