vim.keymap.set(
    "i",
    "<C-a>",
    function() vim.fn.feedkeys(vim.fn['copilot#Accept'](), '') end
)
