plan k8s_ubuntu::plan_newfile(
  TargetSpec $targets
) {
  apply($targets) {
    $message = lookup('message')
    file { '~/Documents/github/bolt-k8s/ubuntu/file.txt':
      ensure  => file,
      content => template('k8s_ubuntu/file.txt.erb')
    }
  }
}
