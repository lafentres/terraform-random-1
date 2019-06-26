resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 10
}

variable "name" {
  type = string
}

output "random" {
  value = random_id.random.hex
}
