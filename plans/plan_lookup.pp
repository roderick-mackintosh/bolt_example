plan k8s_ubuntu::plan_lookup(
  TargetSpec $targets
) {
  apply('localhost') {
    notice("Some data in hiera: ${lookup('message')}")
  }
  out::message($message)
}
