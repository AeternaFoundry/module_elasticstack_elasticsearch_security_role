output "elasticsearch_security_roles_id" {
  description = "Map of id values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_security_roles_applications" {
  description = "Map of applications values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no applications are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.applications if v.applications != null && length(v.applications) > 0 }
}
output "elasticsearch_security_roles_cluster" {
  description = "Map of cluster values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no cluster are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "elasticsearch_security_roles_description" {
  description = "Map of description values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no description are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "elasticsearch_security_roles_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_security_roles_global" {
  description = "Map of global values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no global are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.global if v.global != null && length(v.global) > 0 }
}
output "elasticsearch_security_roles_indices" {
  description = "Map of indices values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no indices are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.indices if v.indices != null && length(v.indices) > 0 }
}
output "elasticsearch_security_roles_metadata" {
  description = "Map of metadata values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no metadata are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "elasticsearch_security_roles_name" {
  description = "Map of name values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no name are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elasticsearch_security_roles_remote_indices" {
  description = "Map of remote_indices values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no remote_indices are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.remote_indices if v.remote_indices != null && length(v.remote_indices) > 0 }
}
output "elasticsearch_security_roles_run_as" {
  description = "Map of run_as values across all elasticsearch_security_roles, keyed the same as var.elasticsearch_security_roles except keys with no run_as are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_role.elasticsearch_security_roles : k => v.run_as if v.run_as != null && length(v.run_as) > 0 }
}

