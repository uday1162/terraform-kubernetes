resource "kubernetes_deployment" "myfirstapplication" {
  metadata {
    name = var.deployment-name
    namespace = var.namespace-name
    labels = {
      test = var.labels
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        test = var.labels
      }
    }

    template {
      metadata {
        labels = {
          test = var.labels
        }
      }
      spec {
        container {
          image = "nginx:1.21.6"
          name  = var.deployment-name

          resources {
            limits = {
              cpu    = var.resource-limits-cpu
              memory = var.resource-limits-memory
            }
            requests = {
              cpu    = var.resource-requests-cpu
              memory = var.resource-requests-memory
            }
          }
        }
      }
    }
  }


}

