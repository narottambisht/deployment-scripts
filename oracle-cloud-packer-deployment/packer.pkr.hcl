packer {
  required_plugins {
    oracle = {
      version = ">= 1.0.4"
      source  = "github.com/hashicorp/oracle"
    }
  }
}

source "oracle-oci" "portfolio" {
  ssh_private_key_file = "~/.ssh/id_rsa_2"
  availability_domain = "uFhv:AP-MUMBAI-1-AD-1"
  base_image_ocid     = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaaphswi2ognlnrw73hroduiqzr3ff34rt3fd5tmdte7vidnsygmsha"
  compartment_ocid    = "ocid1.tenancy.oc1..aaaaaaaasicaqcxspqifa3ondpjufvo7a4syra75mzdy7la772e7tby5pqoq"
  image_name          = "ExampleImage"
  instance_name = "portfolio-instance"
  shape               = "VM.Standard.A1.Flex"
  ssh_username        = "ubuntu"
  subnet_ocid         = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaat3jnwjbhkljpblp43owhv5al2n6r5bl4czmp2jo7y4a6feulguiq"
  shape_config {
    ocpus = 2
  }
}

build {
  sources = ["source.oracle-oci.portfolio"]
  provisioner "shell" {
    inline = ["echo foo"]
  }
}

