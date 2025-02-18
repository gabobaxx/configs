# Gabriel Bencomo
# https://github.com/gabrielba15/configs

from libqtile import layout
from settings.theme import colors

# Layouts and layout rules
layout_conf = {
'border_focus': colors['focus'][0],
'border_width': 2,
'margin': 8,
}

layouts = [
    layout.Max(**layout_conf),
    layout.MonadTall(**layout_conf),
    layout.RatioTile(**layout_conf),
]
