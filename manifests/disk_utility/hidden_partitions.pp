# Public: The Visibility of Hidden Partitions in Disk Utility
class osx::disk_utility::hidden_partitions {
  boxen::osx_defaults { 'The Visibility of Hidden Partitions in Disk Utility':
    user   => $::boxen_user,
    domain => 'com.apple.DiskUtility',
    key    => 'DUShowEveryPartition',
    value  => true;
  }
}
