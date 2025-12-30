output "vm_public_ip" {
  description = "The public IP of the K3s node"
  value       = google_compute_instance.k3s_vm.network_interface[0].access_config[0].nat_ip
}

output "vm_internal_ip" {
  description = "The internal IP of the K3s node"
  value       = google_compute_instance.k3s_vm.network_interface[0].network_ip
}
