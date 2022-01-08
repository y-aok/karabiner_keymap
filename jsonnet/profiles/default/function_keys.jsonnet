local mods = import 'mods.libsonnet';

[
  mods.simple('f1', 'display_brightness_decrement'),
  mods.simple('f2', 'display_brightness_increment'),
  mods.simple('f3', 'mission_control'),
  mods.simple('f4', 'launchpad'),
  mods.simple('f5', 'illumination_decrement'),
  mods.simple('f6', 'illumination_increment'),
  mods.simple('f7', 'rewind'),
  mods.simple('f8', 'play_or_pause'),
  mods.simple('f9', 'fastforward'),
  mods.simple('f10', 'mute'),
  mods.simple('f11', 'volume_decrement'),
  mods.simple('f12', 'volume_increment'),
]
