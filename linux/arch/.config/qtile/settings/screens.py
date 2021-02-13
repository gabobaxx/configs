
# Gabriel Bencomo
# https://github.com/gabrielba15/configs

### MULTIMONITOR SUPPORT ###

from libqtile.config import Screen
from libqtile import bar
from settings.widgets import primary_widgets, secondary_widgets
import subprocess


status_bar = lambda widgets: bar.Bar(widgets, 24, opacity=0.95)

screens = [Screen(top=status_bar(primary_widgets))]

connected_monitors = subprocess.run(
    "xrandr | grep 'connected' | cut -d ' ' -f 2",
    shell=True,
    stdout=subprocess.PIPE
).stdout.decode("UTF-8").split("\n")[:-1].count("connected")

if connected_monitors > 1:
    for i in range(1, connected_monitors):
        screens.append(Screen(top=status_bar(secondary_widgets)))

# screens = [
#     Screen(
#         bottom=bar.Bar(
#             [
#                 widget.CurrentLayout(),
#                 widget.GroupBox(),
#                 widget.Prompt(),
#                 widget.WindowName(),
#                 widget.Chord(
#                     chords_colors={
#                         'launch': ("#ff0000", "#ffffff"),
#                     },
#                     name_transform=lambda name: name.upper(),
#                 ),
#                 widget.Systray(),
#                 widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
#                 widget.QuickExit(),
#             ],
#             24,
#         ),
#     ),
# ]
