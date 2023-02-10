variable "compartment_id" {
  description = "Compartment Identifier"
  type        = string
}

variable "instance_availability_domain" {
  description = "Availability Domain where the ContainerInstance is running."
  type        = string
}

variable "instance_image_id" {
  # This can be found from https://docs.oracle.com/en-us/iaas/images/
  description = "The OCID of an image or a boot volume to use, depending on the value of source_type"
  type        = string
}

variable "instance_shape" {
  description = "The shape of the instance. The shape determines the number of CPUs and the amount of memory allocated to the instance."
  type        = string
}

variable "instance_ssh_authorized_keys" {
  description = "Provide one or more public SSH keys to be included in the ~/.ssh/authorized_keys file for the default user on the instance. With this key you'll be able to SSH into this instance."
  type        = string
}

variable "instance_cpus" {
  description = "Number of CPU's you want for your instance"
  type    = string
  default = "1"
}

variable "instance_memory_in_gbs" {
  description = "Memory in Gigs"
  type    = string
  default = "1"
}

variable "instance_name" {
  description = "Name you want to give to the instance"
  type        = string
}

variable "instance_subnet_id" {
  description = "Subnet id of the instance "
  type        = string
}

variable "user_ocid" {
  description = "User oracle cloud id can be found from the oracle cloud console"
  type        = string
}

variable "private_key_fingerprint" {
  description = "Fingerprint of the Identifier key for the user can be found in ~/.oci/config"
  type        = string
}

variable "user_private_key_path" {
  description = "Identifier path of key for the user can be found in ~/.oci/config"
  type        = string
}