resource "elasticstack_elasticsearch_security_role" "elasticsearch_security_roles" {
  for_each = var.elasticsearch_security_roles

  name        = each.value.name
  cluster     = each.value.cluster
  description = each.value.description
  global      = each.value.global
  metadata    = each.value.metadata
  run_as      = each.value.run_as
  timeouts    = each.value.timeouts

  dynamic "applications" {
    for_each = each.value.applications != null ? each.value.applications : []
    content {
      application = applications.value.application
      privileges  = applications.value.privileges
      resources   = applications.value.resources
    }
  }

  dynamic "elasticsearch_connection" {
    for_each = each.value.elasticsearch_connection != null ? each.value.elasticsearch_connection : []
    content {
      api_key                  = elasticsearch_connection.value.api_key
      bearer_token             = elasticsearch_connection.value.bearer_token
      ca_data                  = elasticsearch_connection.value.ca_data
      ca_file                  = elasticsearch_connection.value.ca_file
      ca_fingerprint           = elasticsearch_connection.value.ca_fingerprint
      cert_data                = elasticsearch_connection.value.cert_data
      cert_file                = elasticsearch_connection.value.cert_file
      endpoints                = elasticsearch_connection.value.endpoints
      es_client_authentication = elasticsearch_connection.value.es_client_authentication
      headers                  = elasticsearch_connection.value.headers
      insecure                 = elasticsearch_connection.value.insecure
      key_data                 = elasticsearch_connection.value.key_data
      key_file                 = elasticsearch_connection.value.key_file
      password                 = elasticsearch_connection.value.password
      username                 = elasticsearch_connection.value.username
    }
  }

  dynamic "indices" {
    for_each = each.value.indices != null ? each.value.indices : []
    content {
      allow_restricted_indices = indices.value.allow_restricted_indices
      dynamic "field_security" {
        for_each = indices.value.field_security != null ? indices.value.field_security : []
        content {
          except = field_security.value.except
          grant  = field_security.value.grant
        }
      }
      names      = indices.value.names
      privileges = indices.value.privileges
      query      = indices.value.query
    }
  }

  dynamic "remote_indices" {
    for_each = each.value.remote_indices != null ? each.value.remote_indices : []
    content {
      allow_restricted_indices = remote_indices.value.allow_restricted_indices
      clusters                 = remote_indices.value.clusters
      dynamic "field_security" {
        for_each = remote_indices.value.field_security != null ? remote_indices.value.field_security : []
        content {
          except = field_security.value.except
          grant  = field_security.value.grant
        }
      }
      names      = remote_indices.value.names
      privileges = remote_indices.value.privileges
      query      = remote_indices.value.query
    }
  }
}

