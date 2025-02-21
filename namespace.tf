resource "kubernetes_namespace" "example" {
  metadata {
    name = var.namespace-name
    labels = {
      test = var.labels
    }
  }
}