variable "firefox" {
  type        = string
  default     = "firefox-demo"
  description = "DNS Name for router"
}

variable "home" {
  type        = list(string)
  default     = ["apex-migrations.hopto.org."]
  description = "DDNS Record"
}

variable "vps" {
  type        = list(string)
  default     = ["85.10.132.208"]
  description = "DDNS Record"
}