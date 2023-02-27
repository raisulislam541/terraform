resource "local_file" "pets" {
  filename = "/Users/raisul/Documents/terraform-local/data_sources/new_pets.txt"
  content = data.local_file.dog.content
}

# read local_file
data "local_file" "dog" {
  filename = "/Users/raisul/Documents/terraform-local/data_sources/dog.txt"

}
