resource "yandex_storage_bucket" "devops-site" {
#   access_key            = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#   secret_key            = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket                = "fabrika-terraform-site"
  default_storage_class = "standard"
  anonymous_access_flags {
    read        = true
    list        = true
    config_read = true
  }
  website {
    index_document = "index.html"
  }
}