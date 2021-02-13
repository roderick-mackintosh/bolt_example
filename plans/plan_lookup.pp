plan bolt_example::plan_lookup(
  TargetSpec $targets
) {
  apply('localhost') {
    notice("Some data in hiera: ${lookup('message')}")
  }
  out::message($message)
}
