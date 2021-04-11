---------------------------
-- matthew awesome theme --
---------------------------

theme = {}

theme.font          = "Fira Code Nerd Font Regular 10"
--theme.font          = "UbuntuMono Nerd Font Regular 8"

theme.bg_normal     = "#181818"
theme.bg_focus      = "#000000"
theme.bg_urgent     = "#000000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#a765e0"
theme.fg_urgent     = "#a765e0"
theme.fg_minimize   = "#000000"

theme.border_width  = 1
theme.border_normal = "#a765e0"
theme.border_focus  = "#a765e0"
theme.border_marked = "#4a1c91"

-- Useless gaps
theme.useless_gap = 10

-- There are other variable sets
-- overriding the blackarch one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/matthew/.config/awesome/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/matthew/.config/awesome/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/matthew/.config/awesome/submenu.png"
theme.menu_height = 20
theme.menu_width  = 200

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/home/matthew/.config/awesome/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/home/matthew/.config/awesome/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/home/matthew/.config/awesome/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/matthew/.config/awesome/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/home/matthew/.config/awesome/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/home/matthew/.config/awesome/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/home/matthew/.config/awesome/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/matthew/.config/awesome/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/home/matthew/.config/awesome/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/home/matthew/.config/awesome/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/home/matthew/.config/awesome/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/home/matthew/.config/awesome/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/home/matthew/.config/awesome/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/home/matthew/.config/awesome/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/home/matthew/.config/awesome/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/matthew/.config/awesome/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/home/matthew/.config/awesome/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/home/matthew/.config/awesome/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/matthew/.config/awesome/wallpaper.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = "/home/matthew/.config/awesome/layouts/fairhw.png"
theme.layout_fairv = "/home/matthew/.config/awesome/layouts/fairvw.png"
theme.layout_floating  = "/home/matthew/.config/awesome/layouts/floatingw.png"
theme.layout_magnifier = "/home/matthew/.config/awesome/layouts/magnifierw.png"
theme.layout_max = "/home/matthew/.config/awesome/layouts/maxw.png"
theme.layout_fullscreen = "/home/matthew/.config/awesome/layouts/fullscreenw.png"
theme.layout_tilebottom = "/home/matthew/.config/awesome/layouts/tilebottomw.png"
theme.layout_tileleft   = "/home/matthew/.config/awesome/layouts/tileleftw.png"
theme.layout_tile = "/home/matthew/.config/awesome/layouts/tilew.png"
theme.layout_tiletop = "/home/matthew/.config/awesome/layouts/tiletopw.png"
theme.layout_spiral  = "/home/matthew/.config/awesome/layouts/spiralw.png"
theme.layout_dwindle = "/usr/share/awesome/themeslayouts/dwindlew.png"

theme.awesome_icon = "/home/matthew/.config/awesome/icon.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
