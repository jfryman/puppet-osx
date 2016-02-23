# Public: Assitive device access
class osx::universal_access::assistive_device_access($ensure = 'present') {
  file { '/private/var/db/.AccessibilityAPIEnabled':
    ensure  => $ensure,
    content => 'a',
    owner   => root,
    group   => 'wheel',
    mode    => '0444',
  }
}
