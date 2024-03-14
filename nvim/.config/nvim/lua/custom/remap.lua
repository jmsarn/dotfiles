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

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Debugging keymaps
vim.keymap.set("n", "<F3>", ":lua require'dap'.continue()<CR>", { desc = "Continue" })
vim.keymap.set("n", "<F4>", ":lua require'dap'.step_over()<CR>", { desc = "Step over" })
vim.keymap.set("n", "<F5>", ":lua require'dap'.step_into()<CR>", { desc = "Step into" })
vim.keymap.set("n", "<F6>", ":lua require'dap'.step_out()<CR>", { desc = "Step out" })
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
    { desc = "Conditional breakpoint" })
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
    { desc = "Log breakpoint" })
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { desc = "Open REPL" })
