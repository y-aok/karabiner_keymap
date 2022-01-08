local complex_mods = import 'complex_mods.jsonnet';
local devices = import 'devices.jsonnet';
local function_keys = import 'function_keys.jsonnet';
local simple_mods = import 'simple_mods.jsonnet';

{
  name: 'Default profile',
  parameters: {
    delay_milliseconds_before_open_device: 1000,
  },
  selected: true,
  virtual_hid_keyboard: {
    caps_lock_delay_milliseconds: 0,
    country_code: 45,
    keyboard_type: 'ansi',
    mouse_key_xy_scale: 100,
  },
  complex_modifications: complex_mods,
  simple_modifications: simple_mods,
  fn_function_keys: function_keys,
  devices: devices,
}
