output "app_service_default_site_hostname" {
  value = module.app_service.default_site_hostname
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "key_vault_uri" {
  value = module.key_vault.vault_uri
}

output "sql_server_fqdn" {
  value = module.sql_database.fqdn
}

output "storage_account_primary_web_endpoint" {
  value = module.storage_account.primary_web_endpoint
}

output "app_service_id" {
  value = module.app_service.id
}

output "acr_name" {
  value = module.acr.name
}

output "key_vault_name" {
  value = module.key_vault.name
}