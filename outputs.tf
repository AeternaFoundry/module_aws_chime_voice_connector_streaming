output "chime_voice_connector_streamings_id" {
  description = "Map of id values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chime_voice_connector_streamings_data_retention" {
  description = "Map of data_retention values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.data_retention if v.data_retention != null }
}
output "chime_voice_connector_streamings_disabled" {
  description = "Map of disabled values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.disabled if v.disabled != null }
}
output "chime_voice_connector_streamings_media_insights_configuration" {
  description = "Map of media_insights_configuration values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => one(v.media_insights_configuration) if v.media_insights_configuration != null && length(v.media_insights_configuration) > 0 }
}
output "chime_voice_connector_streamings_region" {
  description = "Map of region values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chime_voice_connector_streamings_streaming_notification_targets" {
  description = "Map of streaming_notification_targets values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.streaming_notification_targets if v.streaming_notification_targets != null && length(v.streaming_notification_targets) > 0 }
}
output "chime_voice_connector_streamings_voice_connector_id" {
  description = "Map of voice_connector_id values across all chime_voice_connector_streamings, keyed the same as var.chime_voice_connector_streamings"
  value       = { for k, v in aws_chime_voice_connector_streaming.chime_voice_connector_streamings : k => v.voice_connector_id if v.voice_connector_id != null && length(v.voice_connector_id) > 0 }
}

