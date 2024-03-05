data "transip_domain" "apex-migrations" {
  name = "apex-migrations.net"
}

resource "transip_dns_record" "firefox" {
  domain  = data.transip_domain.apex-migrations.id
  name    = var.firefox
  expire  = 300
  type    = "A"
  content = var.vps
}