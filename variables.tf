variable "elasticsearch_security_roles" {
  description = <<EOT
Map of elasticsearch_security_roles, attributes below
Required:
    - name
Optional:
    - cluster
    - description
    - global
    - metadata
    - run_as
    - timeouts
    - applications (block):
        - application (required)
        - privileges (required)
        - resources (required)
    - elasticsearch_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_data (optional)
        - ca_file (optional)
        - ca_fingerprint (optional)
        - cert_data (optional)
        - cert_file (optional)
        - endpoints (optional)
        - es_client_authentication (optional)
        - headers (optional)
        - insecure (optional)
        - key_data (optional)
        - key_file (optional)
        - password (optional)
        - username (optional)
    - indices (block):
        - allow_restricted_indices (optional)
        - field_security (optional, block):
            - except (optional)
            - grant (optional)
        - names (required)
        - privileges (required)
        - query (optional)
    - remote_indices (block):
        - allow_restricted_indices (optional)
        - clusters (required)
        - field_security (optional, block):
            - except (optional)
            - grant (optional)
        - names (required)
        - privileges (required)
        - query (optional)
EOT

  type = map(object({
    name        = string
    cluster     = optional(set(string))
    description = optional(string)
    global      = optional(string)
    metadata    = optional(string)
    run_as      = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    applications = optional(list(object({
      application = string
      privileges  = set(string)
      resources   = set(string)
    })))
    elasticsearch_connection = optional(list(object({
      api_key                  = optional(string)
      bearer_token             = optional(string)
      ca_data                  = optional(string)
      ca_file                  = optional(string)
      ca_fingerprint           = optional(string)
      cert_data                = optional(string)
      cert_file                = optional(string)
      endpoints                = optional(list(string))
      es_client_authentication = optional(string)
      headers                  = optional(map(string))
      insecure                 = optional(bool)
      key_data                 = optional(string)
      key_file                 = optional(string)
      password                 = optional(string)
      username                 = optional(string)
    })))
    indices = optional(list(object({
      allow_restricted_indices = optional(bool)
      field_security = optional(list(object({
        except = optional(set(string))
        grant  = optional(set(string))
      })))
      names      = set(string)
      privileges = set(string)
      query      = optional(string)
    })))
    remote_indices = optional(list(object({
      allow_restricted_indices = optional(bool)
      clusters                 = set(string)
      field_security = optional(list(object({
        except = optional(set(string))
        grant  = optional(set(string))
      })))
      names      = set(string)
      privileges = set(string)
      query      = optional(string)
    })))
  }))
}

