local style = require "core.style"
local common = require "core.common"

-- Gleam color palette: https://coolors.co/ffd596-9ce7ff-ffddfa-f0eeff-c8ffa7-1e1e1e-8b8b8b-ffaff3-fdffab
local sunset = "#FFD596"
local non_photo_blue = "#9CE7FF"
local mimi_pink = "#FFDDFA"
local lavender = "#F0EEFF"
local light_green = "#C8FFA7"
local eerie_black = "#1E1E1E"
local eerie_blacker = "#151515"
local battleship_gray = "#8B8B8B"
local plum = "#FFAFF3"
local mindaro = "#FDFFAB"

-- Base colors are taken from the default lite xl theme
style.background = { common.color(eerie_black) }    -- Docview
style.background2 = { common.color(eerie_blacker) } -- Treeview
style.background3 = { common.color(eerie_blacker) } -- Command view
style.text = { common.color "#97979c" }
style.caret = { common.color "#93DDFA" }
style.accent = { common.color "#e1e1e6" }
-- style.dim - text color for nonactive tabs, tabs divider, prefix in log and
-- search result, hotkeys for context menu and command view
style.dim = { common.color "#525257" }
style.divider = { common.color "#202024" } -- Line between nodes
style.selection = { common.color "#48484f" }
style.line_number = { common.color "#525259" }
style.line_number2 = { common.color "#83838f" } -- With cursor
style.line_highlight = { common.color "#343438" }
style.scrollbar = { common.color "#414146" }
style.scrollbar2 = { common.color "#4b4b52" } -- Hovered
style.scrollbar_track = { common.color(eerie_blacker) }
style.nagbar = { common.color "#FF0000" }
style.nagbar_text = { common.color "#FFFFFF" }
style.nagbar_dim = { common.color "rgba(0, 0, 0, 0.45)" }
style.drag_overlay = { common.color "rgba(255,255,255,0.1)" }
style.drag_overlay_tab = { common.color "#93DDFA" }
style.good = { common.color "#72b886" }
style.warn = { common.color "#FFA94D" }
style.error = { common.color "#FF3333" }
style.modified = { common.color "#1c7c9c" }


style.syntax["normal"]   = { common.color(lavender) }
style.syntax["keyword"]  = { common.color(sunset) }
style.syntax["function"] = { common.color(non_photo_blue) }
style.syntax["string"]   = { common.color(light_green) }
style.syntax["comment"]  = { common.color(battleship_gray) }
style.syntax["operator"] = { common.color(plum) }
style.syntax["literal"]  = { common.color(mimi_pink) }
style.syntax["number"]   = { common.color(mindaro) }
style.syntax["symbol"]   = { common.color(lavender) }
style.syntax["keyword2"] = { common.color(sunset) } -- not sure about these

style.log["INFO"]        = { icon = "i", color = style.text }
style.log["WARN"]        = { icon = "!", color = style.warn }
style.log["ERROR"]       = { icon = "!", color = style.error }

return style
