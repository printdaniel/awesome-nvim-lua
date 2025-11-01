-- =========================================
-- 📁 Archivo: lua/usrdaniel/options.lua
-- 🧩 Configuración general de Neovim
-- =========================================

-- Líder principal
vim.g.mapleader = " "

-- ===============================
-- 🧱 Configuración básica
-- ===============================
local opt = vim.opt

opt.number = true                -- Mostrar número de línea
opt.relativenumber = true        -- Mostrar número relativo
opt.cursorline = true            -- Resalta la línea actual
opt.termguicolors = true         -- Colores verdaderos en terminal
opt.mouse = "a"                  -- Habilitar el mouse
opt.clipboard = "unnamedplus"    -- Usar el portapapeles del sistema
opt.hidden = true                -- Permitir buffers en segundo plano
opt.swapfile = false             -- Desactivar archivos swap
opt.backup = false               -- Desactivar backups
opt.undofile = true              -- Habilitar historial persistente de undo
opt.signcolumn = "yes"           -- Mostrar columna de signos (LSP, Git, etc.)
opt.scrolloff = 8                -- Mantener 8 líneas visibles al hacer scroll
opt.sidescrolloff = 8
opt.wrap = false                 -- No ajustar las líneas largas

-- ===============================
-- ⌨️  Tabs, identación y espacios
-- ===============================
opt.tabstop = 4                  -- Espacios por tab
opt.shiftwidth = 4               -- Espacios al usar >> o <<
opt.expandtab = true             -- Convierte tabs en espacios
opt.smartindent = true           -- Indentación inteligente
opt.autoindent = true            -- Mantener indentación previa

-- ===============================
-- 🔍 Búsqueda
-- ===============================
opt.ignorecase = true            -- Ignorar mayúsculas en búsqueda
opt.smartcase = true             -- Buscar sensible si hay mayúsculas
opt.incsearch = true             -- Resaltar mientras escribes
opt.hlsearch = true              -- Resaltar coincidencias

-- ===============================
-- 💾 Rendimiento
-- ===============================
opt.updatetime = 300             -- Tiempo antes de actualizar (ms)
opt.timeoutlen = 500             -- Tiempo para combinaciones de teclas
opt.lazyredraw = true            -- Mejorar rendimiento al hacer macros

-- ===============================
-- 🧭 Interfaz
-- ===============================
opt.splitright = true            -- Abrir vertical splits a la derecha
opt.splitbelow = true            -- Abrir horizontal splits abajo
opt.showmode = false             -- No mostrar modo (-- INSERT --)
opt.laststatus = 3               -- Barra de estado global (Neovim 0.9+)
opt.cmdheight = 1                -- Altura mínima de la línea de comandos
opt.pumheight = 10               -- Altura máxima del menú de autocompletado
opt.conceallevel = 0             -- Mostrar todos los caracteres de Markdown
opt.list = true                  -- Mostrar caracteres invisibles
opt.listchars = {
  tab = "→ ",
  trail = "·",
  extends = "❯",
  precedes = "❮",
  nbsp = "␣",
}

-- ===============================
-- 🌈 Apariencia
-- ===============================
opt.colorcolumn = "80"           -- Columna guía
opt.fillchars = { eob = " " }    -- Sin ~ en líneas vacías
opt.showtabline = 2              -- Mostrar la barra de tabs siempre
opt.background = "dark"          -- Fondo oscuro (para temas oscuros)

-- ===============================
-- 🗃️ Sesiones y archivos
-- ===============================
opt.fileencoding = "utf-8"
opt.backspace = { "indent", "eol", "start" }
opt.completeopt = { "menuone", "noselect" } -- Para nvim-cmp

-- ===============================
-- 🧠 Otras opciones útiles
-- ===============================
opt.shortmess:append("c")        -- Oculta mensajes de autocompletado
opt.whichwrap:append("<,>,[,],h,l") -- Navegar entre líneas con teclas

-- ===============================
-- 🧩 Corrección de errores comunes
-- ===============================
vim.schedule(function()
  pcall(vim.cmd, "filetype plugin indent on")
end)

-- ===============================
-- ✅ Confirmación
-- ===============================
vim.notify("Opciones de Neovim cargadas correctamente 🚀", vim.log.levels.INFO)
