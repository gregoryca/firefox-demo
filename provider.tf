# variable "oidc_token" {}
# variable "oidc_token_file_path" {}
# variable "oidc_request_token" {}
# variable "oidc_request_url" {}

# Configure the Azure provider
terraform {
  required_providers {
    transip = {
      source  = "aequitas/transip"
      version = "0.1.22"
    }

    ansible = {
      version = "~> 1.2.0"
      source  = "ansible/ansible"
    }
  }

  backend "http" {
    lock_address   = "http://terraform-backend.apex-migrations.net/s/ff-demo/"
    unlock_address = "http://terraform-backend.apex-migrations.net/s/ff-demo/"
    address        = "http://terraform-backend.apex-migrations.net/s/ff-demo/"
  }
}

## TransIP Provider
provider "transip" {
  account_name = "gregoryacdevops"
  private_key  = <<EOT
-----BEGIN PRIVATE KEY-----
MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDJX4DCTK1NreLG
W3wNilsw3bDZkaSNwti9852vTdrFINqzw0hUH6cMpM7sNNj55MG1CXJngCO0YuUK
teJQI5QCLzofQW8vGwtlsN2bXfYFSJ/clY10SZfTy1edAKFUs4J3UUzCWp+34SpN
amDhsDDmeK2os6h8PRd9D6HYdspxcOc8GZ3V8SbAinxlL6AOeQCkg+eiNsy9OJfu
aA8JSefgzYco4L3ZQxJGi3DeLcw5SFoBK2XoqJ/OSfQ44OVFDM8JSMBwHbB3u0D6
2dClte3itnyFNI4KWK90S6qJe80aTFzLZ/uFL8IE5xnjyAYpCHpzYKz2a6yz10My
Oeb/siFpAgMBAAECggEAKg/JvEv50wTkHlyTj9x7abyUqQ1T2sx9K0gMgsZ3UL+p
Du1WWUP3R5vRION1AtV2ZJMhk17fllkl0FPnfqe/zakBse+gAq3adpY347D/p2Dh
C1ktn8GTdgi+NywfhqqsMLIJn3sAa48bn+n9bIa54BoK4/cK1VCJbHTscGN3q7Pz
gJBxBYKbuAVxeafHBO6imU3uzfp8g4c89EG1S4Mf5rMldxlwAoCp7Wb2+Qe4I76q
4V4st3tBir99fpeW6AoK+II2s9tLYbIAQBEhzvhOR1eFh8YOErO51XXxAYi3IGiw
N+9lGN/jWSLIhZ5BCwiVUodUZZCbud4aABbaL0bl0QKBgQDxhB42uqc8QqvxruXO
YfGGOeuS272WKKrlMew2FlQ6mIasrSlLfD25PMCbUjDHonNzo1LkN2GV1sdSGhRb
qooPSd2RhxmbhZ/jotW1O4vJEoP5uMwEB/cJ3s27+fFgiD5favoidpdF3VgeBsxf
8re3EtYiAxcGT47BdXVlEvnTxQKBgQDVcxaLvjhVJrgLrF886WhsooBkQvFgqFgN
5SV5qZ/n24wjW2cfjkkrOB348rz7ZfNQoDcO2uzq7EBoccY+nnBdmAMNIndGxAnv
qQp8i+sF1QHaWgo2oBxUkS0Yx2zKBJCy9AHPjUI/9IB/MaDq6jCqVY0pjpGcOmVY
r043t1OdVQKBgCV4khd7riazUWoV8KGsoIRqyBno7ek2Ng2JSVS68iaFM5/m3dlQ
VWNAAcIXZmoS0kbGuD2gOgu9Xv9l/HKcav8kPrQtedOfT8dJpE6SBoYT0VYVTdHy
SmnFn7XieYi4mrTDLDvcmmvEg79k3qCkT8yfp4lvYUshXMy3JJeh8hDhAoGAN2+t
klu0C8GDmVyKW6qPOW+3AtM0F5OBUxKJeiCo7DHkIqaxkMuGi1gGyMpadLyUxgLm
adBIKfdz/uxVvZuuuVAqsrWZ3uI5Zmoz1AcO4jPhSFGMR4Wr9fbCjKX2xj0LS779
3WblpvCckuxTy89JFmQjxoBFpxqvian2GZheegUCgYBBq9VlYYMfA9jJvdC1a7iS
ITFfelkVLA/gGEPWp+QOuXCP8DxO3hpWXOVUFXU48dBMEIw6yIJ73cJ408qoH0x3
rQdM5zl6tsIkrF0Pa5lcCyLCGaYDK69YYtiQo294zqxoUgLQW4aPY4nYQuaWLjqs
y6X+8YchU0Q45f3lanKbWw==
-----END PRIVATE KEY-----
  EOT
}