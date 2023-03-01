terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "> 1.2.0"
    }
  }
}

resource "local_file" "pets" {
  filename = "/root/pet.txt"
  content = "we love pets!"
}
