Before do
  # adjust local configuration like this
  # @puppetcfg['confdir']  = File.join(File.dirname(__FILE__), '..', '..')
  # @puppetcfg['manifest'] = File.join(@puppetcfg['confdir'], 'manifests', 'site.pp')
  # @puppetcfg['modulepath']  = "/srv/puppet/modules:/srv/puppet/site-modules"

  # adjust facts like this
  @puppetcfg['confdir']  = File.join(File.dirname(__FILE__), '..', '..')
  @puppetcfg['manifest'] = File.join(@puppetcfg['confdir'], 'manifests', 'site.pp')
  @puppetcfg['modulepath']  = File.join(@puppetcfg['confdir'], 'modules')
  @puppetcfg['storeconfigs']  = false
  @facts['disks']  = '/dev/null'
  @facts['operatingsystem']  = 'CentOS'
  @facts['ipaddress']  = '127.0.0.1'
  @facts['architecture'] = "x86_64"
end
