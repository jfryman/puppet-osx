# Public: Set icon to toolbar
class osx::menu_bar::toolbar() {
  include osx::system

  $value = [
            '/System/Library/CoreServices/Menu Extras/Bluetooth.menu',
            '/System/Library/CoreServices/Menu Extras/Display.menu',
            '/System/Library/CoreServices/Menu Extras/Volume.menu',
            '/System/Library/CoreServices/Menu Extras/VPN.menu',
            '/System/Library/CoreServices/Menu Extras/AirPort.menu',
            '/System/Library/CoreServices/Menu Extras/TextInput.menu',
            '/System/Library/CoreServices/Menu Extras/User.menu',
            ]
  boxen::osx_defaults { 'Set icon toolbar':
    user   => $::boxen_user,
    key    => 'menuExtras',
    domain => 'com.apple.systemuiserver',
    value  => $value,
    type   => 'array',
    notify => Exec['killall SystemUIServer'];
  }
}
