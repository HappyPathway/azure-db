//--------------------------------------------------------------------
// Modules
module "mysql_server" {
  source  = "app.terraform.io/Darnold-AzureTF/mysql-server/azure"
  version = "2.7.1"

  db_name        = "vaultdemo"
  location       = "${data.terraform_remote_state.network.location}"
  resource_group = "${data.terraform_remote_state.network.rg_name}"
  server_name    = "${var.service_name}"
  service_name   = "${var.service_name}"
  vault_cluster  = "${var.vault_cluster}"
  vault_token    = "${var.vault_token}"
}
