-- typescript or hypescript
require'lspconfig'.tsserver.setup{}

--svelte
require'lspconfig'.svelte.setup{}

require'lspconfig'.tailwindcss.setup{}

--css
--require'lspconfig'.cssls.setup{}

-- require'lspconfig'.rls.setup{}

--rust
require'lspconfig'.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

-- prisma
require'lspconfig'.prismals.setup{}

-- python
require'lspconfig'.pyright.setup{}
