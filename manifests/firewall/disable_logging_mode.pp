# Public: Disable Firewall Logging Mode
class osx::firewall::disable_logging_mode {
  include osx::firewall

  exec { 'Disable Firewall Logging Mode':
    command => "${osx::firewall::path_to_binary} --setloggingmode off",
    unless  => "${osx::firewall::path_to_binary} --getloggingmode | grep off",
    user    => root,
  }
}
