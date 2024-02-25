vim.keymap.set(
    "i",
    "<C-l>",
    function() vim.fn.feedkeys(vim.fn['copilot#Accept'](), '') end
)
-- vim.keymap.set(
