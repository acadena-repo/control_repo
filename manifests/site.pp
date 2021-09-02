node default {
  file { '/root/README':
    ensure  => file,
    content => 'site pp is where puppet master first looks for configuration details about a system when the puppet agent checks in. Due to there is only one node, the puppet master, the node default declaration is used',
    owner   => 'root'
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/NODE-INFO':
    ensure  => file,
    content => $fqdn,
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
