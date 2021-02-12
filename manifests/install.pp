# Class documentation
class k8s_ubuntu::install {

  include apt

  # install google package repository apt key
  apt::key { 'google':
    ensure => 'present',
    id     => '54A647F9048D5688D7DA2ABE6A030B21BA07F4FB',
    source => 'https://packages.cloud.google.com/apt/doc/apt-key.gpg',
  }

  # add google kubernetes package repositories
  apt::source { 'kubernetes':
    location => 'http://apt.kubernetes.io/',
    repos    => 'main',
    release  => 'kubernetes-xenial',
    require  => Apt::Key['google']
  }

  # install the packages
  $package_list = [ 'tree', 'docker.io', 'apt-transport-https', 'kubeadm', 'kubelet', 'kubectl' ]
  package { $package_list:
    ensure => 'present'
  }
}
