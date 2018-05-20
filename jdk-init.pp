class jdk8 ( $home_dir ){

 $jdk_file = "${home_dir}/jdk"  
file{"/tmp/jdk-8u161-linux-x64.tar.gz":
      ensure => file,
      source => "puppet:///extra_files/jdk-8u161-linux-x64.tar.gz",
      beofore = Exec['extract the jdk tar file']
      }

  exec { 'extract the jdk tar file':
    command => 'tar -xf /tmp/jdk-8u161-linux-x64.tar.gz',
    cwd => '/home/vagrant',
    path    => '/usr/local/bin/:/bin/',
    require => File["/tmp/jdk-8u161-linux-x64.tar.gz"],
    notify => File['$jdk_file']
       }

  file { $jdk_file:
    ensure => 'link',
    target => '/home/vagrant/jdk1.8.0_161',
    require => Exec['extract the jdk tar file']

       }
}
