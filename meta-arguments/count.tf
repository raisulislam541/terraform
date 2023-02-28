resource "local_file" "pet" {
  filename = var.filename[count.index]
  content = "hello world!"
  count = length(var.filename)
}

# using count to  use library function length to get default values inside variables

output "pets" {
  value = "local_file.pet"
}


