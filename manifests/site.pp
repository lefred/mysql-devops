node percona1 {
	include cucumber-puppet 
	include percona::repository
        include percona::server
        include percona::toolkit
	include testdb::employee

	Class['percona::repository'] -> Class['percona::server'] -> Class['percona::server::config']  -> Class['testdb::employee'] 

	class {'percona::server::config': perconaserverid => "1" }
	class {'percona::server::service': ensure => "running" }
}
