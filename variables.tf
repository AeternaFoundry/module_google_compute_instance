variable "compute_instances" {
  description = <<EOT
Map of compute_instances, attributes below
Required:
    - machine_type
    - name
    - boot_disk (block):
        - auto_delete (optional)
        - device_name (optional)
        - disk_encryption_key_raw (optional)
        - disk_encryption_key_rsa (optional)
        - disk_encryption_service_account (optional)
        - force_attach (optional)
        - guest_os_features (optional)
        - initialize_params (optional, block):
            - architecture (optional)
            - enable_confidential_compute (optional)
            - image (optional)
            - labels (optional)
            - provisioned_iops (optional)
            - provisioned_throughput (optional)
            - replica_zones (optional)
            - resource_manager_tags (optional)
            - resource_policies (optional)
            - size (optional)
            - snapshot (optional)
            - source_image_encryption_key (optional, block):
                - kms_key_self_link (optional)
                - kms_key_service_account (optional)
                - raw_key (optional)
                - rsa_encrypted_key (optional)
            - source_snapshot_encryption_key (optional, block):
                - kms_key_self_link (optional)
                - kms_key_service_account (optional)
                - raw_key (optional)
                - rsa_encrypted_key (optional)
            - storage_pool (optional)
            - type (optional)
        - interface (optional)
        - kms_key_self_link (optional)
        - mode (optional)
        - source (optional)
    - network_interface (block):
        - access_config (optional, block):
            - nat_ip (optional)
            - network_tier (optional)
            - public_ptr_domain_name (optional)
        - alias_ip_range (optional, block):
            - ip_cidr_range (required)
            - subnetwork_range_name (optional)
        - enable_vpc_scoped_dns (optional)
        - igmp_query (optional)
        - internal_ipv6_prefix_length (optional)
        - ipv6_access_config (optional, block):
            - external_ipv6 (optional)
            - external_ipv6_prefix_length (optional)
            - name (optional)
            - network_tier (required)
            - public_ptr_domain_name (optional)
        - ipv6_address (optional)
        - network (optional)
        - network_attachment (optional)
        - network_ip (optional)
        - nic_type (optional)
        - queue_count (optional)
        - stack_type (optional)
        - subnetwork (optional)
        - subnetwork_project (optional)
        - vlan (optional)
Optional:
    - allow_stopping_for_update
    - can_ip_forward
    - deletion_policy
    - deletion_protection
    - description
    - desired_status
    - enable_display
    - hostname
    - key_revocation_action_type
    - labels
    - metadata
    - metadata_startup_script
    - min_cpu_platform
    - project
    - resource_policies
    - tags
    - zone
    - advanced_machine_features (block):
        - enable_nested_virtualization (optional)
        - enable_uefi_networking (optional)
        - performance_monitoring_unit (optional)
        - threads_per_core (optional)
        - turbo_mode (optional)
        - visible_core_count (optional)
    - attached_disk (block):
        - device_name (optional)
        - disk_encryption_key_raw (optional)
        - disk_encryption_key_rsa (optional)
        - disk_encryption_service_account (optional)
        - force_attach (optional)
        - kms_key_self_link (optional)
        - mode (optional)
        - source (required)
    - confidential_instance_config (block):
        - confidential_instance_type (optional)
        - enable_confidential_compute (optional)
    - guest_accelerator (block):
        - count (required)
        - type (required)
    - instance_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
    - network_performance_config (block):
        - total_egress_bandwidth_tier (required)
    - params (block):
        - resource_manager_tags (optional)
    - reservation_affinity (block):
        - specific_reservation (optional, block):
            - key (required)
            - values (required)
        - type (required)
    - scheduling (block):
        - automatic_restart (optional)
        - availability_domain (optional)
        - host_error_timeout_seconds (optional)
        - instance_termination_action (optional)
        - local_ssd_recovery_timeout (optional, block):
            - nanos (optional)
            - seconds (required)
        - max_run_duration (optional, block):
            - nanos (optional)
            - seconds (required)
        - min_node_cpus (optional)
        - node_affinities (optional, block):
            - key (required)
            - operator (required)
            - values (required)
        - on_host_maintenance (optional)
        - on_instance_stop_action (optional, block):
            - discard_local_ssd (optional)
        - preemptible (optional)
        - provisioning_model (optional)
        - termination_time (optional)
    - scratch_disk (block):
        - device_name (optional)
        - interface (required)
        - size (optional)
    - service_account (block):
        - email (optional)
        - scopes (required)
    - shielded_instance_config (block):
        - enable_integrity_monitoring (optional)
        - enable_secure_boot (optional)
        - enable_vtpm (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - workload_identity_config (block):
        - identity (optional)
        - identity_certificate_enabled (optional)
EOT

  type = map(object({
    machine_type               = string
    name                       = string
    allow_stopping_for_update  = optional(bool)
    can_ip_forward             = optional(bool)
    deletion_policy            = optional(string)
    deletion_protection        = optional(bool)
    description                = optional(string)
    desired_status             = optional(string)
    enable_display             = optional(bool)
    hostname                   = optional(string)
    key_revocation_action_type = optional(string)
    labels                     = optional(map(string))
    metadata                   = optional(map(string))
    metadata_startup_script    = optional(string)
    min_cpu_platform           = optional(string)
    project                    = optional(string)
    resource_policies          = optional(list(string))
    tags                       = optional(set(string))
    zone                       = optional(string)
    boot_disk = object({
      auto_delete                     = optional(bool)
      device_name                     = optional(string)
      disk_encryption_key_raw         = optional(string)
      disk_encryption_key_rsa         = optional(string)
      disk_encryption_service_account = optional(string)
      force_attach                    = optional(bool)
      guest_os_features               = optional(list(string))
      initialize_params = optional(object({
        architecture                = optional(string)
        enable_confidential_compute = optional(bool)
        image                       = optional(string)
        labels                      = optional(map(string))
        provisioned_iops            = optional(number)
        provisioned_throughput      = optional(number)
        replica_zones               = optional(list(string))
        resource_manager_tags       = optional(map(string))
        resource_policies           = optional(list(string))
        size                        = optional(number)
        snapshot                    = optional(string)
        source_image_encryption_key = optional(object({
          kms_key_self_link       = optional(string)
          kms_key_service_account = optional(string)
          raw_key                 = optional(string)
          rsa_encrypted_key       = optional(string)
        }))
        source_snapshot_encryption_key = optional(object({
          kms_key_self_link       = optional(string)
          kms_key_service_account = optional(string)
          raw_key                 = optional(string)
          rsa_encrypted_key       = optional(string)
        }))
        storage_pool = optional(string)
        type         = optional(string)
      }))
      interface         = optional(string)
      kms_key_self_link = optional(string)
      mode              = optional(string)
      source            = optional(string)
    })
    network_interface = list(object({
      access_config = optional(list(object({
        nat_ip                 = optional(string)
        network_tier           = optional(string)
        public_ptr_domain_name = optional(string)
      })))
      alias_ip_range = optional(list(object({
        ip_cidr_range         = string
        subnetwork_range_name = optional(string)
      })))
      enable_vpc_scoped_dns       = optional(bool)
      igmp_query                  = optional(string)
      internal_ipv6_prefix_length = optional(number)
      ipv6_access_config = optional(list(object({
        external_ipv6               = optional(string)
        external_ipv6_prefix_length = optional(string)
        name                        = optional(string)
        network_tier                = string
        public_ptr_domain_name      = optional(string)
      })))
      ipv6_address       = optional(string)
      network            = optional(string)
      network_attachment = optional(string)
      network_ip         = optional(string)
      nic_type           = optional(string)
      queue_count        = optional(number)
      stack_type         = optional(string)
      subnetwork         = optional(string)
      subnetwork_project = optional(string)
      vlan               = optional(number)
    }))
    advanced_machine_features = optional(object({
      enable_nested_virtualization = optional(bool)
      enable_uefi_networking       = optional(bool)
      performance_monitoring_unit  = optional(string)
      threads_per_core             = optional(number)
      turbo_mode                   = optional(string)
      visible_core_count           = optional(number)
    }))
    attached_disk = optional(list(object({
      device_name                     = optional(string)
      disk_encryption_key_raw         = optional(string)
      disk_encryption_key_rsa         = optional(string)
      disk_encryption_service_account = optional(string)
      force_attach                    = optional(bool)
      kms_key_self_link               = optional(string)
      mode                            = optional(string)
      source                          = string
    })))
    confidential_instance_config = optional(object({
      confidential_instance_type  = optional(string)
      enable_confidential_compute = optional(bool)
    }))
    guest_accelerator = optional(list(object({
      count = number
      type  = string
    })))
    instance_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
    }))
    network_performance_config = optional(object({
      total_egress_bandwidth_tier = string
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    reservation_affinity = optional(object({
      specific_reservation = optional(object({
        key    = string
        values = list(string)
      }))
      type = string
    }))
    scheduling = optional(object({
      automatic_restart           = optional(bool)
      availability_domain         = optional(number)
      host_error_timeout_seconds  = optional(number)
      instance_termination_action = optional(string)
      local_ssd_recovery_timeout = optional(object({
        nanos   = optional(number)
        seconds = number
      }))
      max_run_duration = optional(object({
        nanos   = optional(number)
        seconds = number
      }))
      min_node_cpus = optional(number)
      node_affinities = optional(list(object({
        key      = string
        operator = string
        values   = set(string)
      })))
      on_host_maintenance = optional(string)
      on_instance_stop_action = optional(object({
        discard_local_ssd = optional(bool)
      }))
      preemptible        = optional(bool)
      provisioning_model = optional(string)
      termination_time   = optional(string)
    }))
    scratch_disk = optional(list(object({
      device_name = optional(string)
      interface   = string
      size        = optional(number)
    })))
    service_account = optional(object({
      email  = optional(string)
      scopes = set(string)
    }))
    shielded_instance_config = optional(object({
      enable_integrity_monitoring = optional(bool)
      enable_secure_boot          = optional(bool)
      enable_vtpm                 = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    workload_identity_config = optional(object({
      identity                     = optional(string)
      identity_certificate_enabled = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        length(v.network_interface) >= 1
      )
    ])
    error_message = "Each network_interface list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.boot_disk.interface == null || (contains(["SCSI", "NVME"], v.boot_disk.interface))
      )
    ])
    error_message = "must be one of: \"SCSI\", \"NVME\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.boot_disk.initialize_params == null || (v.boot_disk.initialize_params.size == null || (v.boot_disk.initialize_params.size >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.boot_disk.initialize_params == null || (v.boot_disk.initialize_params.architecture == null || (contains(["X86_64", "ARM64"], v.boot_disk.initialize_params.architecture)))
      )
    ])
    error_message = "must be one of: \"X86_64\", \"ARM64\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.boot_disk.mode == null || (contains(["READ_WRITE", "READ_ONLY"], v.boot_disk.mode))
      )
    ])
    error_message = "must be one of: \"READ_WRITE\", \"READ_ONLY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        alltrue([for item in v.network_interface : (item.vlan == null || (item.vlan >= 2 && item.vlan <= 255))])
      )
    ])
    error_message = "must be between 2 and 255"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        alltrue([for item in v.network_interface : (item.nic_type == null || (contains(["GVNIC", "VIRTIO_NET", "IDPF", "MRDMA", "IRDMA", "IDPF"], item.nic_type)))])
      )
    ])
    error_message = "must be one of: \"GVNIC\", \"VIRTIO_NET\", \"IDPF\", \"MRDMA\", \"IRDMA\", \"IDPF\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        alltrue([for item in v.network_interface : (item.stack_type == null || (contains(["IPV4_ONLY", "IPV4_IPV6", "IPV6_ONLY", ""], item.stack_type)))])
      )
    ])
    error_message = "must be one of: \"IPV4_ONLY\", \"IPV4_IPV6\", \"IPV6_ONLY\", \"\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        alltrue([for item in v.network_interface : (item.igmp_query == null || (contains(["IGMP_QUERY_V2", "IGMP_QUERY_DISABLED"], item.igmp_query)))])
      )
    ])
    error_message = "must be one of: \"IGMP_QUERY_V2\", \"IGMP_QUERY_DISABLED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.network_performance_config == null || (contains(["TIER_1", "DEFAULT"], v.network_performance_config.total_egress_bandwidth_tier))
      )
    ])
    error_message = "must be one of: \"TIER_1\", \"DEFAULT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.attached_disk == null || alltrue([for item in v.attached_disk : (item.mode == null || (contains(["READ_WRITE", "READ_ONLY"], item.mode)))])
      )
    ])
    error_message = "must be one of: \"READ_WRITE\", \"READ_ONLY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.scheduling == null || (v.scheduling.node_affinities == null || alltrue([for item in v.scheduling.node_affinities : (contains(["IN", "NOT_IN"], item.operator))]))
      )
    ])
    error_message = "must be one of: \"IN\", \"NOT_IN\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.scratch_disk == null || alltrue([for item in v.scratch_disk : (contains(["SCSI", "NVME"], item.interface))])
      )
    ])
    error_message = "must be one of: \"SCSI\", \"NVME\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.scratch_disk == null || alltrue([for item in v.scratch_disk : (item.size == null || (item.size >= 375))])
      )
    ])
    error_message = "must be at least 375"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.advanced_machine_features == null || (v.advanced_machine_features.turbo_mode == null || (contains(["ALL_CORE_MAX"], v.advanced_machine_features.turbo_mode)))
      )
    ])
    error_message = "must be one of: \"ALL_CORE_MAX\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.advanced_machine_features == null || (v.advanced_machine_features.performance_monitoring_unit == null || (contains(["STANDARD", "ENHANCED", "ARCHITECTURAL"], v.advanced_machine_features.performance_monitoring_unit)))
      )
    ])
    error_message = "must be one of: \"STANDARD\", \"ENHANCED\", \"ARCHITECTURAL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.desired_status == null || (contains(["RUNNING", "TERMINATED", "SUSPENDED"], v.desired_status))
      )
    ])
    error_message = "must be one of: \"RUNNING\", \"TERMINATED\", \"SUSPENDED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.reservation_affinity == null || (contains(["ANY_RESERVATION", "SPECIFIC_RESERVATION", "NO_RESERVATION"], v.reservation_affinity.type))
      )
    ])
    error_message = "must be one of: \"ANY_RESERVATION\", \"SPECIFIC_RESERVATION\", \"NO_RESERVATION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instances : (
        v.key_revocation_action_type == null || (contains(["STOP", "NONE", ""], v.key_revocation_action_type))
      )
    ])
    error_message = "must be one of: \"STOP\", \"NONE\", \"\""
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

