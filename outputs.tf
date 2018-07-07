output "fqdn" {
  value = "${module.mysql_server.fqdn}"
}

output "server_name" {
  value = "${module.mysql_server.server_name}"
}

output "db_name" {
  value = "${module.mysql_server.db_name}"
}

output "vault_token" {
  value = "${module.mysql_server.vault_token}"
}

output "vault_cluster" {
  value = "${module.mysql_server.vault_cluster}"
}
