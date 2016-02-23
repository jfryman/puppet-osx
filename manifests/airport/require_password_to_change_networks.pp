# Public: Toggle Airport "Require Password to Change Networks" Preference
class osx::airport::require_password_to_change_networks($ensure = 'present') {
  include osx::airport

  validate_re($ensure, '^(present|absent)$', "osx::airport::remember_recent_networks[ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => 'YES',
    default => 'NO'
  }

  exec { 'Toggle Airport "Require Password to Change Networks" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminNetworkChange=${enabled}",
    unless  => "${osx::airport::path_to_binary} prefs RequireAdminNetworkChange | grep ${enabled}",
    user    => root,
  }
}
