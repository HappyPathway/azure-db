//--------------------------------------------------------------------
// Modules
module "mysql_server" {
  source  = "app.terraform.io/Darnold-AzureTF/mysql-server/azure"
  version = "2.1.1"

  db_name        = "vaultdemo"
  ip_name        = "simple-app-ip001"
  location       = "${data.terraform_remote_state.network.location}"
  resource_group = "${data.terraform_remote_state.network.rg_name}"
  server_name    = "vault-demo"
  service_name   = "vault-demo"
  vault_cluster  = "${var.vault_cluster}"
  vault_token    = "${var.vault_token}"
}
