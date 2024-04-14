return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>hH", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader>hJ", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader>hK", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader>hL", function() harpoon:list():replace_at(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        -- vim.keymap.set("n", "<leader>hn", function() harpoon:list():prev() end, {noremap = true})
        -- vim.keymap.set("n", "<leader>hp", function() harpoon:list():next() end, {noremap = true})

-- 
--         -- Telescope configurations
--         -- local conf = require("telescope.config").values
--         -- local function toggle_telescope(harpoon_files)
--         --     local file_paths = {}
--         --     for _, item in ipairs(harpoon_files.items) do
--         --         table.insert(file_paths, item.value)
--         --     end
-- 
--         --     require("telescope.pickers").new({}, {
--         --         prompt_title = "Harpoon",
--         --         finder = require("telescope.finders").new_table({
--         --             results = file_paths,
--         --         }),
--         --         previewer = conf.file_previewer({}),
--         --         sorter = conf.generic_sorter({}),
--         --     }):find()
--         -- end
-- 
--         -- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
--         --     { desc = "Open harpoon window" })
--         -- vim.keymap.set({'n' }, '<C-d>', delete_harpoon_mark, {noremap = true, desc = "Delete Harpoon mark"})
--         -- vim.keymap.set({'n'}, '<C-p>', move_mark_up, {noremap = true, desc = "Move Harpoon mark up"})
--         -- vim.keymap.set({'n'}, '<C-n>', move_mark_down, {noremap = true, desc = "Move Harpoon mark down"})
    end

}
