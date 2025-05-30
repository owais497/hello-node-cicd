resource "kubernetes_manifest" "app_deployment" {
  manifest = yamldecode(file("${path.module}/../k8s/deployment.yml"))
}

resource "kubernetes_manifest" "app_service" {
  manifest = yamldecode(file("${path.module}/../k8s/service.yml"))
}
