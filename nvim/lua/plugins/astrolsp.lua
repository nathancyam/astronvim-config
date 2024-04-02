-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = function(plugin, opts)
    -- Configuration table of features provided by AstroLSP
    opts.servers = opts.servers or {}
    table.insert(opts.servers, "lexical")

    local home = os.getenv("HOME")
    local lspconfig = require("lspconfig")

    opts.config = require("astrocore").extend_tbl(opts.config or {}, {
      lexical = {
        cmd = {home .. "/tools/lexical/_build/dev/package/lexical/bin/start_lexical.sh"},
        filetypes = { "elixir", "eelixir", "heex" },
        root_dir = function (fname)
          return require("lspconfig.util").root_pattern("mix.exs", ".git")(fname)
        end,
      }
    })
  end,
}
