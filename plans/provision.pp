# k8s_ubuntu::provision
plan k8s_ubuntu::provision(String $tf_path) {
  $localhost = get_targets('localhost')

  # create infrastructure with terraform apply
  run_command("cd ${tf_path} && terraform apply -auto-approve", $localhost)
  #$ip_strings = run_command("cd ${$tf_path} && terraform output public_ips", $localhost).map |$r| { $r['stdout'] }
  #$ips = Array($ip_strings).map |$ip| { $ip.strip }

  # 
}
