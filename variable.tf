# Location of the Intersight API Secretkey file
variable "secretkey" {
  default = "/home/PODX/intersight-terraform/secret.txt" 
}
# Intersight API-Key-ID
variable "apikey" {
  default = "61e075b12d33952212/61e596/62054612d301e72fc"
}

variable "endpoint" {
  default = "https://www.intersight.com"
}
# Replace X with your POD number
variable "organization_name" {
  default = "PODX"
}

