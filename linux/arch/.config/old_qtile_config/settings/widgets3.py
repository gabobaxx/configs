
# Gabriel Bencomo
# https://github.com/gabrielba15/configs

from libqtile import widget
from settings.theme import colors


base = lambda fg='text', bg='dark': {
    'foreground': colors[fg],
    'background': colors[bg]
}

separator = lambda: widget.Sep(**base(), linewidth=0, padding=5)

icon = lambda fg='text', bg='dark', fontsize=16, text="?": widget.TextBox(
    **base(fg, bg),
    fontsize=fontsize,
    text=text,
    padding=3
)

powerline = lambda fg="light", bg="dark": widget.TextBox(
   **base(fg, bg),
    text=" ", # Icon: nf-oct-triangle_left
    fontsize=37,
    padding=-2
)

workspaces = lambda: [
    separator(),
    widget.GroupBox(
        **base(fg='light'),
        font='UbuntuMono Nerd Font',
        fontsize=19,
        margin_y=3,
        margin_x=0,
        padding_y=8,
        padding_x=5,
        borderwidth=1,
        active=colors['active'],
        inactive=colors['inactive'],
        rounded=False,
        highlight_method='block',
        urgent_alert_method='block',
        urgent_border=colors['urgent'],
        this_current_screen_border=colors['focus'],
        this_screen_border=colors['grey'],
        other_current_screen_border=colors['dark'],
        other_screen_border=colors['dark'],
        disable_drag=True
    ),
    separator(),
    widget.WindowName(**base(fg='focus'), fontsize=14, padding=5),
    separator(),
]

primary_widgets = [
    *workspaces(),

    separator(),

    # Current Layout 
    powerline('bg', 'dark'),                                        # Powerline
    widget.CurrentLayoutIcon(**base(bg='bg'), scale=0.65),          # Icon
    widget.CurrentLayout(**base(bg='color4'), padding=5),               # Widget

    # Packages to Update
    # powerline('color2', 'color4'),                                      # Powerline 
    # icon(bg="color2", text=' '),                                       # Icon: nf-fa-download
    # widget.CheckUpdates(**base(bg='color2'), update_interval=1800),     # Widget

    # Network
#    powerline('color3', 'color4'),                                      # Powerline
#    icon(bg="color3", text=' '),                                       # Icon: nf-fa-feed
#    widget.Net(**base(bg='color3'), interface='wlan0'),                 # Widget
    
    # Date & Clock
    powerline('color1', 'color4'),                                      # Powerline
    icon(bg="color1", fontsize=17, text=' '),                          # Icon: nf-mdi-calendar_clock
    widget.Clock(**base(bg='color1'), format='%m/%d/%Y - %H:%M:%S'),    # Widget
    
    # Systray
    powerline('dark', 'color1'),                                        # Powerline
    widget.Systray(background=colors['dark'], padding=5),               # Widget

]

secondary_widgets = [
    *workspaces(),

    separator(),

    # CPU Usage
    powerline('color3', 'dark'),                                # Powerline
    widget.CPU(**base(bg='color3')),                            # Widget

    # Memory    
    powerline('color2', 'color3'),                              # Powerline
    icon(bg="color2", fontsize=20, text=' '),                  # Icon: nf-mdi-memory 
    widget.Memory(**base(bg='color2')),                         # Widget

    # Current Layout
    powerline('color4', 'color2'),                              # Powerline
    widget.CurrentLayoutIcon(**base(bg='color4'), scale=0.65),  # Icon
    widget.CurrentLayout(**base(bg='color4'), padding=5),       # Widget
]

widget_defaults = {
    # 'font': 'UbuntuMono Nerd Font Bold',
    'font': 'JetBrains Mono',
    'fontsize': 16,
    'padding': 1,
}
extension_defaults = widget_defaults.copy()
