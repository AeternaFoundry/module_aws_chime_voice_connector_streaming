variable "chime_voice_connector_streamings" {
  description = <<EOT
Map of chime_voice_connector_streamings, attributes below
Required:
    - data_retention
    - voice_connector_id
Optional:
    - disabled
    - region
    - streaming_notification_targets
    - media_insights_configuration (block):
        - configuration_arn (optional)
        - disabled (optional)
EOT

  type = map(object({
    data_retention                 = number
    voice_connector_id             = string
    disabled                       = optional(bool)
    region                         = optional(string)
    streaming_notification_targets = optional(set(string))
    media_insights_configuration = optional(object({
      configuration_arn = optional(string)
      disabled          = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_streamings : (
        v.data_retention >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

