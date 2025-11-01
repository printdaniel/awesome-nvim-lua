-- ========================================
-- 🚀 Lazy.nvim - Plugin Manager Setup
-- ========================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Instala lazy.nvim si no existe
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Prepend al runtime path
vim.opt.rtp:prepend(lazypath)

-- Setup de lazy.nvim
require("lazy").setup({
    spec = "usrdaniel.lazy",   -- ruta a tus plugins
    defaults = {
        --lazy = true,           -- todos los plugins se cargan de forma perezosa por defecto
        version = false,       -- usar latest commit en vez de tag (puedes cambiarlo si quieres)
    },
    change_detection = {
        notify = false,        -- no mostrar notificaciones al actualizar plugins
    },
})
