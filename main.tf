resource "local_file" "pets" {
  filename = var.filename
  content  = var.content
}

resource "random_pet" "my_pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

# accessing  a list

resource "random_pet" "my_pet" {
  prefix = var.prefix[1]
}

# accessing a map

resource "local_file" "pets" {
  filename = var.filename
  content  = var.file-content["statement2"]
}

# accessing set values

resource "random_number" "numbers" {
  length = var.age[1]
}

# resource attributes

resource "local_file" "pets" {
  filename = var.filename
  content  = "my favourite pet is ${random_pet.my_pet.id}"

}


# life cycle rules

resource "local_file" "pet" {

  filename        = "/roort/pets.txt"
  content         = "we love pets"
  file_permission = "0700"
  lifecycle {
    create_before_destroy = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

