vim.lsp.config("pyright", {
  cmd = {
    "docker",
    "exec",
    "-i",
    "python-dev",
    "pyright-langserver",
    "--stdio",
  },

  before_init = function(params)
    params.processId = vim.NIL
  end,

  filetypes = { "python" },

  root_markers = {
    "pyproject.toml",
    ".git",
  },

  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})

vim.lsp.enable("pyright")
