-- Configure lua language server for neovim development
local yaml_settings = {
    yaml = {
        trace = {
          server = "123"
        },
        schemas = {
          kubernetes = "/*.yaml"
        },
        schemaDownload = {  enable = true },
      	validate = true,
      }
}


-- config that activates keymaps and enables snippet support
local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    -- enable snippet support
    capabilities = capabilities,
    -- map buffer local keybindings when the language server attaches
    on_attach = on_attach,
  }
end

-- lsp-install
local function setup_servers()
  require'lspinstall'.setup()

  -- get all installed servers
  local servers = require'lspinstall'.installed_servers()

  for _, server in pairs(servers) do
    local config = make_config()

    -- local config = {}
    if server == "efm" then
      config.init_options = {documentFormatting = true}
      config.filetypes = {"python", "sh"}
      config.settings = {
        rootMarkers = {".git/"},
        languages = {
          sh = {
            { formatCommand = "shfmt -ci -s -bn", formatStdin = true, },
            { lintCommand = "shellcheck -f gcc -x", lintSource = "shellcheck", lintIgnoreExitCode = true, lintFormats = {"%f:%l:%c: %trror: %m", "%f:%l:%c: %tarning: %m", "%f:%l:%c: %tote: %m"} }
          },
          python = {
            { formatCommand = "autopep8 -", formatStdin = true },
            { lintCommand = "flake8 --stdin-display-name ${INPUT} -", lintStdin = true, lintFormats = {"%f:%l:%c: %m"} }
          }
        }
      }
    end

    -- language specific config
    -- if server == "yamlls" then
    --   config.settings = yaml_settings
    -- end


    -- if server == "sourcekit" then
    --   config.filetypes = {"swift", "objective-c", "objective-cpp"}; -- we don't want c and cpp!
    -- end
    -- if server == "clangd" then
    --   config.filetypes = {"c", "cpp"}; -- we don't want objective-c and objective-cpp!
    -- end

    require'lspconfig'[server].setup(config)
  end
end

setup_servers()
