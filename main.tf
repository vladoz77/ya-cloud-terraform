terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

// Настройка провайдера
provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

# // Создание сервисного аккаунта
# resource "yandex_iam_service_account" "sa" {
#   name = "fabrika-bucket-admin"
# }

# // Назначение роли сервисному аккаунту
# resource "yandex_resourcemanager_folder_iam_member" "sa-admin" {
#   folder_id =  var.folder_id
#   role      = "storage.admin"
#   member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
# }

# // Создание статического ключа доступа
# resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
#   service_account_id = yandex_iam_service_account.sa.id
#   description        = "static access key for object storage"
# }



