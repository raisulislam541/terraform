variable "filename" {
  default = "/Users/raisul/Documents/terraform-local/pets.txt"
}

variable "content" {
  default = "we love pets!"
}

variable "prefix" {
  default = "Mrs"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "1"
}

# types of variables

# List

variable "prefix" {
  default = ["mr", "mrs", "sir"]
  type = list
}

# map

variable "file-content"{
  type = map
  default = {
    "statement1" = "we love pets"
    "statement2" = "we hate pets"
  }
}

# fixed type in list

variable "prefix" {
  type = list(string)
  default = ["mr", "mrs", "sir"]
  # if we use other types instead of string it will generate error
}

# set

variable "age" {
  type = set(number)
  default = [10, 11, 12]
}

# objects complex data structure using all the types

variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favourite_pet = bool
  })

  default = {
    name = "bella"
    color = "brown"
    age = 8
    food = ["cake", "biscuit"]
    favourite_pet = true
  }
}

# tuples

variable "kitty" {
  type = tuple([string, number, bool])
  default = ["cat", 3, true]
}



