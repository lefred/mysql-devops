node percona1 {
	include cucumber-puppet 
	include percona::repository
        include percona::server

	Class['percona::repository'] -> Class['percona::server'] -> Class['percona::server::config'] 

	class {'percona::server::config': perconaserverid => "1" }
	class {'percona::server::service': ensure => "running" }
}
