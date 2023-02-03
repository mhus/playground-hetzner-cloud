terraform {
   required_providers {
     pass = {
       source = "mecodia/pass"
     }
   }
 }

provider "pass" {
}

#resource "pass_password" "test" {
#  path = "safe1/test"
#  password = "0123456789"
#  data = {
#    zip = "zap"
#  }
#}

data "pass_password" "test" {
  path = "test"
}

#resource "pass_password" "test" {
#  path = "secret/foo"
#  password = "0123456789"
#  data = {
#    zip = "zap"
#  }
#}

#data "pass_password" "test" {
#  path = "${pass_password.test.path}"
#}

#output path {
#    value    = pass_password.test.path
#}

output test {
  value       = data.pass_password.test.password
  sensitive   = false
  description = "the secret content"
}

output testsens {
  value       = data.pass_password.test.password
  sensitive   = true
  description = "the secret content"
}
