class webserver {

  package { 'apache2': 
    ensure => installed
  }

  service { 'apache2':
    ensure => running,
    enable => true,
  }

}

node 'apache2.puppetagent.arris.com' {
  include webserver
}
