# Resources

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "portfolio" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_id
  shape               = var.instance_shape

  source_details {
    source_id   = var.instance_image_id
    source_type = "image"
  }

  display_name = var.instance_name

  shape_config {
    ocpus         = var.instance_cpus
    memory_in_gbs = var.instance_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = var.instance_subnet_id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = file(var.instance_ssh_public_key)
  }

  preserve_boot_volume = false

  connection {
    type = "ssh"
    user = "ubuntu"
    host = self.public_ip
    private_key = file(var.instance_ssh_private_key)
  }

  provisioner "file" {
    source      = "setup.sh"
    destination = "/tmp/setup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup.sh",
      "sudo sh -x /tmp/setup.sh",
    ]
  }
}

# Outputs
output "compute_id" {
  value = oci_core_instance.portfolio.id
}

output "db_state" {
  value = oci_core_instance.portfolio.state
}

output "compute_public_ip" {
  value = oci_core_instance.portfolio.public_ip
}