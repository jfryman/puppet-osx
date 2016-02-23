# Public: enable / disable shortcut
#
# Need to logout
define osx::keyboard::shortcut(
  $enabled  = true,
  $shortcut = $name,
  $key      = undef
) {

  $enabled_int = $enabled ? {
    true    => 1,
    default => 0,
  }
  # TODO: add more default keyboard shortcut int
  case $shortcut {
    'select the previous input source': { $shortcut_int = 60 }
    'select next source in input menu': { $shortcut_int = 62 }
    'show spotlight search field': { $shortcut_int = 64 }
    'show spotlight window': { $shortcut_int = 65 }
    default: { $shortcut_int = 0 }
  }

  if $shortcut_int != 0 {
    $xml1 = plist_read_xml('', 'com.apple.symbolichotkeys', 'AppleSymbolicHotKeys', true)
    $keys_xml1 = plist_set_xml_key_value($xml1, $shortcut_int, 'enabled', $enabled_int, true)
    boxen::osx_defaults { "Toggles shortcut for ${name}":
      user      => $::boxen_user,
      domain    => 'com.apple.symbolichotkeys',
      key       => 'AppleSymbolicHotKeys',
      value     => $keys_xml1,
      readvalue => $xml1,
    }

    if $enabled {
      # TODO: add more default keyboard keys int
      case $key {
        'option space': { $key_int = [ 32, 49, 524288 ] }
        default:        { $key_int = undef }
      }

      if $key_int != undef {
        $xml2 = plist_read_xml('', 'com.apple.symbolichotkeys', 'AppleSymbolicHotKeys', true)
        $key_value = { 'parameters' => $key_int, 'type' => 'standard' }
        $keys_xml2 = plist_set_xml_key_value($xml2, $shortcut_int, 'value', $key_value, true)
        boxen::osx_defaults { "Set key shortcut for ${name}":
          user      => $::boxen_user,
          domain    => 'com.apple.symbolichotkeys',
          key       => 'AppleSymbolicHotKeys',
          value     => $keys_xml2,
          readvalue => $xml2,
        }
      }
    }
  }
}
