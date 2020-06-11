resource "random_id" "whatever" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 16
}

output "random" {
  value = random_id.whatever.hex
}
