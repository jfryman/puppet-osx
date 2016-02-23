# Public: Toggle Airport "Require Password to Turn Wi-Fi On or Off" Preference'
class osx::airport::require_password_to_toggle_power($ensure = 'present') {
  include osx::airport

  validate_re($ensure, '^(present|absent)$', "osx::airport::remember_recent_networks[ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => 'YES',
    default => 'NO'
  }

  exec { 'Toggle Airport "Require Password to Turn Wi-Fi On or Off" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminPowerToggle=${enabled}",
    unless  => "${osx::airport::path_to_binary} prefs RequireAdminPowerToggle | grep ${enabled}",
    user    => root,
  }
}
