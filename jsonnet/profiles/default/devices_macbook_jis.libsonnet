local device_id = import 'device_id/macbook_jis.libsonnet';
local mods = import 'mods.libsonnet';

{
  disable_built_in_keyboard_if_exists: false,
  fn_function_keys: [],
  identifiers: device_id,
  ignore: false,
  manipulate_caps_lock_led: true,
  simple_modifications: [
    mods.simple('tab', 'japanese_eisuu'),
    mods.simple('u', 'y'),
    mods.simple('i', 'u'),
    mods.simple('o', 'i'),
    mods.simple('p', 'o'),
    mods.simple('open_bracket', 'p'),
    mods.simple('close_bracket', 'japanese_kana'),
    mods.simple('j', 'h'),
    mods.simple('k', 'j'),
    mods.simple('l', 'k'),
    mods.simple('semicolon', 'l'),
    mods.simple('quote', 'semicolon'),
    mods.simple('backslash', 'quote'),
    mods.simple('m', 'n'),
    mods.simple('comma', 'm'),
    mods.simple('period', 'comma'),
    mods.simple('slash', 'period'),
    mods.simple('international1', 'slash'),
    mods.simple('left_command', 'f18'),
    mods.simple('japanese_eisuu', 'tab'),
    mods.simple('japanese_kana', 'return_or_enter'),
  ],
}
