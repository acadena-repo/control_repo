node default {
  file { '/root/README':
    ensure  => file,
    content => 'site pp is where puppet master first looks for configuration details about a system when the puppet agent checks in. Due to there is only one node, the puppet master, the node default declaration is used',
  }
}