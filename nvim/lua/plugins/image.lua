-- For rendering images in markdown
return {
    "3rd/image.nvim",
    build = false,
    opts = {
        processor = "magick_cli",
        integrations = {
            markdown = {
                resolve_image_path = function (document_path, image_path, fallback)
                    local working_dir = vim.fn.getcwd()
                    if (working_dir:find("/home/const/notes")) then
                        return working_dir .. "/Assets/" .. image_path
                    end
                    return fallback(document_path, image_path)
                end
            }
        }
    }
}
