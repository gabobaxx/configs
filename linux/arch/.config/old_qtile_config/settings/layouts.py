# Gabriel Bencomo
# https://github.com/gabrielba15/configs

from libqtile import layout
from settings.theme import colors

# Layouts and layout rules
layout_conf = {
'border_focus': colors['focus'][0],
'border_width': 1,
'margin': 2
}

layouts = [
    # Try more layouts by unleashing below layouts.
    layout.Max(),
    layout.MonadTall(**layout_conf),
    layout.RatioTile(**layout_conf),
    # layout.Matrix(columns=2, **layout_conf),
    #layout.MonadWide(**layout_conf),
    #layout.Bsp(**layout_conf),
    #layout.Stack(num_stacks=2),
    # layout.Columns(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

#floating_layout = layout.Floating(
#    float_rules=[
#        {'wmclass': 'confirm'},
#        {'wmclass': 'dialog'},
#        {'wmclass': 'download'},
#        {'wmclass': 'error'},
#        {'wmclass': 'file_progress'},
#        {'wmclass': 'notification'},
#        {'wmclass': 'splash'},
#        {'wmclass': 'toolbar'},
#        {'wmclass': 'confirmreset'},
#        {'wmclass': 'makebranch'},
#        {'wmclass': 'maketag'},
#        {'wname': 'branchdialog'},
#        {'wname': 'pinentry'},
#        {'wmclass': 'ssh-askpass'},
#    ],
#    border_focus=colors["color4"][0]
#)
