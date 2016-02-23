# Public: Toggle Airport "Require Password for Computer-to-Computer Networks" Preference
class osx::airport::require_password_for_computer_to_computer_networks($ensure = 'present') {
  include osx::airport

  validate_re($ensure, '^(present|absent)$', "osx::airport::require_password_for_computer_to_computer_networks[ensure] must be present or absent, is ${ensure}")

  $enabled = $ensure ? {
    present => 'YES',
    default => 'NO'
  }

  exec { 'Toggle Airport "Require Password for Computer-to-Computer Networks" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminIBSS=${enabled}",
    unless  => "${osx::airport::path_to_binary} prefs RequireAdminIBSS | grep ${enabled}",
    user    => root,
  }
}
