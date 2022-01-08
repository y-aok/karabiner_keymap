{
  simple(from, to)::
    {
      from: {
        key_code: from,
      },
      to: {
        key_code: to,
      },
    },

  multi_func_key(from, if_alone, if_held=null)::
    // from: str
    // if_held: List[str]
    // if_alone: List[str]
    local to = (if if_held != null then if_held else [from]);
    {
      description: from + '-> oneshot: ' + if_alone + ', else: ' + to,
      manipulators: [
        {
          from: {
            key_code: from,
            modifiers: {
              optional: [
                'any',
              ],
            },
          },
          to: [
            {
              key_code: key,
            }
            for key in to
          ],
          to_if_alone: [
            {
              key_code: key,
            }
            for key in if_alone
          ],
          type: 'basic',
        },
      ],
    },
  layer_manipulator(modifier_keys, from, to_key, to_mods=null)::
    // modifier_keys: List[str]
    // from: str
    // to_key: str
    // to_mods: List[str]
    [
      {
        type: 'basic',
        from: {
          key_code: from,
          modifiers: {
            mandatory: modifier_keys,
          },
        },
        to: [
          {
            key_code: to_key,
          } + (
            if to_mods == null then {} else { modifiers: to_mods }
          ),
        ],
      },
    ],
  layer_manipulator_st(modifier_key, from, to, require_key_up=true)::
    local set_var = modifier_key + '_layer';
    [
      {
        from: {
          modifiers: {
            optional: [
              'any',
            ],
          },
        } + {
          simultaneous: [
            {
              key_code: modifier_key,
            },
            {
              key_code: from,
            },
          ],
        } + {
          simultaneous_options: {
            key_down_order: 'strict',
            to_after_key_up: [
              {
                set_variable: {
                  name: set_var,
                  value: 0,
                },
              },
            ],
          } + (
            if require_key_up then {
              key_up_order: 'strict_inverse',
            } else {}
          ),
        },
        parameters: {
          'basic.simultaneous_threshold_milliseconds': 500,
        },
        to: [
          {
            set_variable: {
              name: set_var,
              value: 1,
            },
          },
        ] + [
          {
            key_code: key,
          }
          for key in to
        ],
        type: 'basic',
      },
      {
        conditions: [
          {
            name: set_var,
            type: 'variable_if',
            value: 1,
          },
        ],
        from: {
          key_code: from,
          modifiers: {
            optional: [
              'any',
            ],
          },
        },
        to: [
          {
            key_code: key,
          }
          for key in to
        ],
        type: 'basic',
      },
    ],
}
