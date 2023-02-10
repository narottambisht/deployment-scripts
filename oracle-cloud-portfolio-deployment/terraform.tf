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
  description = "Provide one or more public SSH keys to be included in the ~/.ssh/authorized_keys file for the default user on the instance."
  type        = string
}

variable "instance_cpus" {
  type    = string
  default = "1"
}

variable "instance_memory_in_gbs" {
  type    = string
  default = "1"
}

variable "instance_name" {
  description = ""
  type        = string
}
variable "tenancy_ocid" {
  description = ""
  type        = string
}