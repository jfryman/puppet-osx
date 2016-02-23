# TODO: Let the user pass in readable values
# add to list of possible values
#
# - scope: SCcf (current fodler)
class osx::finder::default_search_scope($scope = 'SCcf') {
  include osx::finder

  boxen::osx_defaults { 'Set the Default Scope Used When Using The Search Box in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXDefaultSearchScope',
    value  => $scope,
    notify => Exec['killall Finder'];
  }
}
