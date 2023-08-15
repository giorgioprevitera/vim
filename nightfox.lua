require("nightfox").setup({
    options = {
        dim_inactive = true,
        styles = {
            strings = "italic",
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
        },
        colorblind = {
            enable = false,
            severity = {
                -- protan = 1,
                -- deutan = 1,
                tritan = 1,
            },
        },
    },
})
