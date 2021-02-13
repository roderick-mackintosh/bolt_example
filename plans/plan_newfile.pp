plan bolt_example::plan_newfile(
  TargetSpec $targets,
  Optional[String[1]] $path = '/tmp'
) {
  apply($targets) {
    $message = lookup('message')
    file { "${path}/bolt_example.txt":
      ensure  => file,
      content => template('bolt_example/file.txt.erb')
    }
  }
}
