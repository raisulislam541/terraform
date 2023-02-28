variable "filename" {
  type = set(string)
  default = [
    "/Users/raisul/Documents/terraform-local/meta-arguments/dog.txt",
    "/Users/raisul/Documents/terraform-local/meta-arguments/cat.txt",
    "/Users/raisul/Documents/terraform-local/meta-arguments/crow.txt"
  ]

}
