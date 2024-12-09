resource "yandex_storage_object" "upload-object" {
#   access_key   = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#   secret_key   = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = yandex_storage_bucket.devops-site.id
  key    = "index.html"
  source = "index.html"
}