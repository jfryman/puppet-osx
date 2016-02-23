# TODO: Insert the rest of the colors listed in the General pref pane
class osx::appearance::colors(
  $highlight = undef,
  $main      = undef) {

  include osx::system

  if $main != undef {
    case $main {
      'blue':      { $main_int = 1 }
      'graphite':  { $main_int = 6 }
      default:     { $main_int = $main }
    }

    boxen::osx_defaults { 'Set the Main UI Color':
      user   => $::boxen_user,
      key    => 'AppleAquaColorVariant',
      domain => 'NSGlobalDomain',
      type   => 'int',
      value  => $main_int,
      notify => Exec['killall SystemUIServer'],
    }
  }

  if $highlight != undef {
    case $highlight {
      'graphite':  { $highlight_color = '0.780400 0.815700 0.858800' }
      default:     { $highlight_color = $highlight }
    }

    boxen::osx_defaults { 'Set the UI Highlight Color':
      user   => $::boxen_user,
      key    => 'AppleHighlightColor',
      domain => 'NSGlobalDomain',
      value  => $highlight_color,
      notify => Exec['killall SystemUIServer'],
    }
  }
}
