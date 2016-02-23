# Public: Toggle Airport "Disconnect On Logout" Preference
class osx::airport::disconnect_on_logout($ensure = 'present') {
  include osx::airport

  validate_re($ensure, '^(present|absent)$', "osx::airport::disconnect_on_logout[ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => 'YES',
    default => 'NO'
  }

  exec { 'Toggle Airport "Disconnect On Logout" Preference':
    command => "${osx::airport::path_to_binary} prefs DisconnectOnLogout=${enabled}",
    unless  => "${osx::airport::path_to_binary} prefs DisconnectOnLogout | grep ${enabled}",
    user    => root,
  }
}
