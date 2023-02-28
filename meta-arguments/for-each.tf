resource "local_file" "newpet" {
  filename = each.value
  content = "we want justice"
  for_each = var.filename

}
