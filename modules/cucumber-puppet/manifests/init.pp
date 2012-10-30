class cucumber-puppet {
	include cucumber-puppet::repository
	include cucumber-puppet::packages

        Class['cucumber-puppet::repository'] -> Class['cucumber-puppet::packages'] 

}
