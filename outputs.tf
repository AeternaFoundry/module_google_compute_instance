output "compute_instances_id" {
  description = "Map of id values across all compute_instances, keyed the same as var.compute_instances except keys with no id are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_instances_advanced_machine_features" {
  description = "Map of advanced_machine_features values across all compute_instances, keyed the same as var.compute_instances except keys with no advanced_machine_features are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.advanced_machine_features) if v.advanced_machine_features != null && length(v.advanced_machine_features) > 0 }
}
output "compute_instances_allow_stopping_for_update" {
  description = "Map of allow_stopping_for_update values across all compute_instances, keyed the same as var.compute_instances except keys with no allow_stopping_for_update are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.allow_stopping_for_update if v.allow_stopping_for_update != null }
}
output "compute_instances_attached_disk" {
  description = "Map of attached_disk values across all compute_instances, keyed the same as var.compute_instances except keys with no attached_disk are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.attached_disk if v.attached_disk != null && length(v.attached_disk) > 0 }
  sensitive   = true
}
output "compute_instances_boot_disk" {
  description = "Map of boot_disk values across all compute_instances, keyed the same as var.compute_instances except keys with no boot_disk are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.boot_disk) if v.boot_disk != null && length(v.boot_disk) > 0 }
  sensitive   = true
}
output "compute_instances_can_ip_forward" {
  description = "Map of can_ip_forward values across all compute_instances, keyed the same as var.compute_instances except keys with no can_ip_forward are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.can_ip_forward if v.can_ip_forward != null }
}
output "compute_instances_confidential_instance_config" {
  description = "Map of confidential_instance_config values across all compute_instances, keyed the same as var.compute_instances except keys with no confidential_instance_config are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.confidential_instance_config) if v.confidential_instance_config != null && length(v.confidential_instance_config) > 0 }
}
output "compute_instances_cpu_platform" {
  description = "Map of cpu_platform values across all compute_instances, keyed the same as var.compute_instances except keys with no cpu_platform are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.cpu_platform if v.cpu_platform != null && length(v.cpu_platform) > 0 }
}
output "compute_instances_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_instances, keyed the same as var.compute_instances except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_instances_current_status" {
  description = "Map of current_status values across all compute_instances, keyed the same as var.compute_instances except keys with no current_status are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.current_status if v.current_status != null && length(v.current_status) > 0 }
}
output "compute_instances_deletion_policy" {
  description = "Map of deletion_policy values across all compute_instances, keyed the same as var.compute_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_instances_deletion_protection" {
  description = "Map of deletion_protection values across all compute_instances, keyed the same as var.compute_instances except keys with no deletion_protection are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.deletion_protection if v.deletion_protection != null }
}
output "compute_instances_description" {
  description = "Map of description values across all compute_instances, keyed the same as var.compute_instances except keys with no description are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_instances_desired_status" {
  description = "Map of desired_status values across all compute_instances, keyed the same as var.compute_instances except keys with no desired_status are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.desired_status if v.desired_status != null && length(v.desired_status) > 0 }
}
output "compute_instances_effective_labels" {
  description = "Map of effective_labels values across all compute_instances, keyed the same as var.compute_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_instances_enable_display" {
  description = "Map of enable_display values across all compute_instances, keyed the same as var.compute_instances except keys with no enable_display are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.enable_display if v.enable_display != null }
}
output "compute_instances_guest_accelerator" {
  description = "Map of guest_accelerator values across all compute_instances, keyed the same as var.compute_instances except keys with no guest_accelerator are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.guest_accelerator if v.guest_accelerator != null && length(v.guest_accelerator) > 0 }
}
output "compute_instances_hostname" {
  description = "Map of hostname values across all compute_instances, keyed the same as var.compute_instances except keys with no hostname are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "compute_instances_instance_encryption_key" {
  description = "Map of instance_encryption_key values across all compute_instances, keyed the same as var.compute_instances except keys with no instance_encryption_key are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.instance_encryption_key) if v.instance_encryption_key != null && length(v.instance_encryption_key) > 0 }
}
output "compute_instances_instance_id" {
  description = "Map of instance_id values across all compute_instances, keyed the same as var.compute_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "compute_instances_key_revocation_action_type" {
  description = "Map of key_revocation_action_type values across all compute_instances, keyed the same as var.compute_instances except keys with no key_revocation_action_type are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.key_revocation_action_type if v.key_revocation_action_type != null && length(v.key_revocation_action_type) > 0 }
}
output "compute_instances_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_instances, keyed the same as var.compute_instances except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_instances_labels" {
  description = "Map of labels values across all compute_instances, keyed the same as var.compute_instances except keys with no labels are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_instances_machine_type" {
  description = "Map of machine_type values across all compute_instances, keyed the same as var.compute_instances except keys with no machine_type are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.machine_type if v.machine_type != null && length(v.machine_type) > 0 }
}
output "compute_instances_metadata" {
  description = "Map of metadata values across all compute_instances, keyed the same as var.compute_instances except keys with no metadata are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "compute_instances_metadata_fingerprint" {
  description = "Map of metadata_fingerprint values across all compute_instances, keyed the same as var.compute_instances except keys with no metadata_fingerprint are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.metadata_fingerprint if v.metadata_fingerprint != null && length(v.metadata_fingerprint) > 0 }
}
output "compute_instances_metadata_startup_script" {
  description = "Map of metadata_startup_script values across all compute_instances, keyed the same as var.compute_instances except keys with no metadata_startup_script are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.metadata_startup_script if v.metadata_startup_script != null && length(v.metadata_startup_script) > 0 }
}
output "compute_instances_min_cpu_platform" {
  description = "Map of min_cpu_platform values across all compute_instances, keyed the same as var.compute_instances except keys with no min_cpu_platform are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.min_cpu_platform if v.min_cpu_platform != null && length(v.min_cpu_platform) > 0 }
}
output "compute_instances_name" {
  description = "Map of name values across all compute_instances, keyed the same as var.compute_instances except keys with no name are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_instances_network_interface" {
  description = "Map of network_interface values across all compute_instances, keyed the same as var.compute_instances except keys with no network_interface are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.network_interface if v.network_interface != null && length(v.network_interface) > 0 }
}
output "compute_instances_network_performance_config" {
  description = "Map of network_performance_config values across all compute_instances, keyed the same as var.compute_instances except keys with no network_performance_config are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.network_performance_config) if v.network_performance_config != null && length(v.network_performance_config) > 0 }
}
output "compute_instances_params" {
  description = "Map of params values across all compute_instances, keyed the same as var.compute_instances except keys with no params are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_instances_project" {
  description = "Map of project values across all compute_instances, keyed the same as var.compute_instances except keys with no project are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_instances_reservation_affinity" {
  description = "Map of reservation_affinity values across all compute_instances, keyed the same as var.compute_instances except keys with no reservation_affinity are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.reservation_affinity) if v.reservation_affinity != null && length(v.reservation_affinity) > 0 }
}
output "compute_instances_resource_policies" {
  description = "Map of resource_policies values across all compute_instances, keyed the same as var.compute_instances except keys with no resource_policies are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.resource_policies if v.resource_policies != null && length(v.resource_policies) > 0 }
}
output "compute_instances_scheduling" {
  description = "Map of scheduling values across all compute_instances, keyed the same as var.compute_instances except keys with no scheduling are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.scheduling) if v.scheduling != null && length(v.scheduling) > 0 }
}
output "compute_instances_scratch_disk" {
  description = "Map of scratch_disk values across all compute_instances, keyed the same as var.compute_instances except keys with no scratch_disk are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.scratch_disk if v.scratch_disk != null && length(v.scratch_disk) > 0 }
}
output "compute_instances_self_link" {
  description = "Map of self_link values across all compute_instances, keyed the same as var.compute_instances except keys with no self_link are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_instances_service_account" {
  description = "Map of service_account values across all compute_instances, keyed the same as var.compute_instances except keys with no service_account are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.service_account) if v.service_account != null && length(v.service_account) > 0 }
}
output "compute_instances_shielded_instance_config" {
  description = "Map of shielded_instance_config values across all compute_instances, keyed the same as var.compute_instances except keys with no shielded_instance_config are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.shielded_instance_config) if v.shielded_instance_config != null && length(v.shielded_instance_config) > 0 }
}
output "compute_instances_tags" {
  description = "Map of tags values across all compute_instances, keyed the same as var.compute_instances except keys with no tags are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "compute_instances_tags_fingerprint" {
  description = "Map of tags_fingerprint values across all compute_instances, keyed the same as var.compute_instances except keys with no tags_fingerprint are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.tags_fingerprint if v.tags_fingerprint != null && length(v.tags_fingerprint) > 0 }
}
output "compute_instances_terraform_labels" {
  description = "Map of terraform_labels values across all compute_instances, keyed the same as var.compute_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "compute_instances_workload_identity_config" {
  description = "Map of workload_identity_config values across all compute_instances, keyed the same as var.compute_instances except keys with no workload_identity_config are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => one(v.workload_identity_config) if v.workload_identity_config != null && length(v.workload_identity_config) > 0 }
}
output "compute_instances_zone" {
  description = "Map of zone values across all compute_instances, keyed the same as var.compute_instances except keys with no zone are omitted"
  value       = { for k, v in google_compute_instance.compute_instances : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

