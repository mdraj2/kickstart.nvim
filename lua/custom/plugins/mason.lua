require("mason").setup({
    registries = {
        "github:mason-org/mason-registry",      -- official, checked first
        "github:Crashdummyy/mason-registry",    -- custom, fallback
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",   -- Lua language server
    },
    automatic_installation = true,
})

require("mason-tool-installer").setup({
    ensure_installed = {
        "roslyn",     -- C# LSP (from Crashdummyy's registry)
        "csharpier",  -- C# formatter
        "stylua",     -- Lua formatter
    },
    auto_update = false,
    run_on_start = true,
})
