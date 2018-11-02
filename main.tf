//--------------------------------------------------------------------
// Modules
module "mysql_server" {
  source  = "github.com/HappyPathway/terraform-azure-mysql-server"

  db_name        = "${var.db_name}"
  location       = "${data.terraform_remote_state.network.location}"
  resource_group = "${data.terraform_remote_state.network.rg_name}"
  server_name    = "${var.server_name}"
  service_name   = "${var.service_name}"
  vault_addr = "${var.vault_addr}"
  vault_token = "${var.vault_token}"
  vault_cluster = "${var.vault_cluster}"
}
