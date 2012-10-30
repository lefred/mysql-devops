class cucumber-puppet::repository {


 $releasever = "6"
 $basearch = $hardwaremodel
 yumrepo {
        "lefred":
            descr       => "lefred",
            enabled     => 1,
            baseurl     => "http://ec2.lefred.be/centos/$releasever/",
            gpgcheck    => 0;
 }

}
