
-- vim.api.nvim_create_autocmd({ 'BufWinLeave' }, {
--     command = 'silent! mkview'
-- })

-- vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
--     command = 'silent! loadview'
-- })

-- vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufCreate', 'BufEnter', 'BufLeave' }, {
--     command = 'silent !fcitx5-remote -c'
-- })
vim.g.width_close_tree = 120
-- vim.api.nvim_create_autocmd({ 'VimResized' }, {
--     pattern = { "*.*" },
--     callback = function()
--         -- keep the size of every window, very usful!
--         vim.cmd.wincmd('=')
--         utils.close_tree()
--     end
-- })
--
-- vim.api.nvim_create_autocmd("TextYankPost", {
-- 	callback = function()
-- 		vim.highlight.on_yank()
-- 		require("osc52").copy_register("+")
-- 	end,
-- })
vim.api.nvim_create_autocmd("UIEnter", {
	callback = function()
		require("notify").setup({
			background_colour = "#000000",
		})
	end,
})
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--     pattern = { "*" },
--     command = "silent! wall",
--     nested = true,
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = { "yml", "yaml", "json", "html", "css", "javascript", "typescript", "sh", "sql", "vue" },
--     callback = function(event)
--         vim.opt_local.shiftwidth = 2
--         vim.opt_local.tabstop = 2
--         vim.opt_local.softtabstop = 2
--     end,
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--     callback = function(_)
--         vim.o.foldcolumn = '0'
--         vim.o.foldlevel = 99
--         vim.o.foldlevelstart = 99
--         vim.o.foldenable = true
--         if require("nvim-treesitter.parsers").get_parser() then
--             vim.o.foldmethod = "expr"
--             vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
--         else
--             vim.o.foldmethod = "syntax"
--         end
--     end,
-- })
