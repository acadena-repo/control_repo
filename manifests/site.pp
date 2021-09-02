node default {
  file { '/root/README':
    ensure  => file,
    content => 'site pp is where puppet master first looks for configuration details about a system when the puppet agent checks in. Due to there is only one node, the puppet master, the node default declaration is used',
    owner   => 'root'
  }
  file { '/root/NOTES':
    ensure  => file,
    content => 'Duplicate declarations: puppet is all about to describing your desired state so, duplicate declarations lead to an ambiguous state\n',
               'Other built-in resources can be found at https docs.puppet.com latest type.html\n',
  }
}
