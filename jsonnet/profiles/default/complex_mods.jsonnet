local mods = import 'mods.libsonnet';

{
  parameters: {
    'basic.simultaneous_threshold_milliseconds': 50,
    'basic.to_delayed_action_delay_milliseconds': 500,
    'basic.to_if_alone_timeout_milliseconds': 200,
    'basic.to_if_held_down_threshold_milliseconds': 500,
    'mouse_motion_to_scroll.speed': 100,
  },
  rules: [
    mods.multi_func_key('spacebar', ['spacebar'], ['left_control']),
    mods.multi_func_key('return_or_enter', ['return_or_enter'], ['left_shift']),
    mods.multi_func_key('right_command', ['delete_forward'], ['right_option']),
    mods.multi_func_key('tab', ['tab'], ['fn']),
    mods.multi_func_key('f18', ['escape'], ['left_command']),
    mods.multi_func_key('left_control', ['escape'], ['left_command']),
    {
      description: 'layer1 triggered by fn',
      manipulators: mods.layer_manipulator(['fn'], 'q', '1', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'w', '2', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'e', '3', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'r', '4', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 't', '5', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'y', '6', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'u', '7', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'i', '8', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'o', '9', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'p', '0', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'backslash', 'escape') +
                    mods.layer_manipulator(['fn'], 'a', 'equal_sign', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 's', 'equal_sign') +
                    mods.layer_manipulator(['fn'], 'd', 'delete_or_backspace') +
                    mods.layer_manipulator(['fn'], 'f', 'hyphen') +
                    mods.layer_manipulator(['fn'], 'g', 'grave_accent_and_tilde', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'h', 'left_arrow') +
                    mods.layer_manipulator(['fn'], 'j', 'down_arrow') +
                    mods.layer_manipulator(['fn'], 'k', 'up_arrow') +
                    mods.layer_manipulator(['fn'], 'l', 'right_arrow') +
                    mods.layer_manipulator(['fn'], 'semicolon', 'hyphen', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'quote', 'grave_accent_and_tilde') +
                    mods.layer_manipulator(['fn'], 'v', 'escape') +
                    mods.layer_manipulator(['fn'], 'n', 'open_bracket', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'm', 'close_bracket', ['left_shift']) +
                    mods.layer_manipulator(['fn'], 'comma', 'open_bracket') +
                    mods.layer_manipulator(['fn'], 'period', 'close_bracket') +
                    mods.layer_manipulator(['fn'], 'spacebar', 'spacebar', ['left_command']),
    },
    {
      description: 'layer2 triggered by right_option',
      manipulators: mods.layer_manipulator(['right_option'], 'w', 'grave_accent_and_tilde') +
                    mods.layer_manipulator(['right_option'], 'e', 'backslash', ['left_shift']) +
                    mods.layer_manipulator(['right_option'], 'r', 'backslash') +
                    mods.layer_manipulator(['right_option'], 'i', 'backslash', ['left_control']) +
                    mods.layer_manipulator(['right_option'], 'o', 'escape') +
                    mods.layer_manipulator(['right_option'], 'a', '1') +
                    mods.layer_manipulator(['right_option'], 's', '2') +
                    mods.layer_manipulator(['right_option'], 'd', '3') +
                    mods.layer_manipulator(['right_option'], 'f', '4') +
                    mods.layer_manipulator(['right_option'], 'g', '5') +
                    mods.layer_manipulator(['right_option'], 'h', '6') +
                    mods.layer_manipulator(['right_option'], 'j', '7') +
                    mods.layer_manipulator(['right_option'], 'k', '8') +
                    mods.layer_manipulator(['right_option'], 'l', '9') +
                    mods.layer_manipulator(['right_option'], 'semicolon', '0'),
    },
  ],
}
