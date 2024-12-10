vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jj", "<Esc>", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>w", function()
    vim.cmd.vnew()
    vim.cmd.wincmd("l")
end)

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>v", "<C-v>")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.get_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.get_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Telescope buffers
vim.keymap.set("n", "<S-b>", function()
    require("telescope.builtin").buffers(require("telescope.themes").get_ivy({
        sort_mru = true,
        sort_lastused = true,
        initial_mode = "normal",
        -- Pre-select the current buffer
        -- ignore_current_buffer = false,
        -- select_current = true,
        layout_config = {
            -- Set preview width, 0.7 sets it to 70% of the window width
            preview_width = 0.45,
        },
    }))
end, { desc = "[P]Open telescope buffers" })
