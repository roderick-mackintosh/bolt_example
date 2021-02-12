# k8s_ubuntu::destroy
plan k8s_ubuntu::destroy(String $tf_path) {
  $localhost = get_targets('localhost')

  # create infrastructure with terraform apply
  run_command("cd ${tf_path} && terraform destroy -auto-approve", $localhost)
}
