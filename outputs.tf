output "fqdn" {
  value = "${module.mysql_server.fqdn}"
}

output "server_name" {
  value = "${module.mysql_server.server_name}"
}

output "db_name" {
  value = "${module.mysql_server.db_name}"
}

output "vault_mount" {
  value = "${module.mysql_server.vault_mount}"
}
