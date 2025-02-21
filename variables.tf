variable "deployment-name" {
  default = "myfirstapplication"

}

variable "labels" {
  default = "myfirstapplication"

}

variable "namespace-name" {
  default = "my-first-namespace"

}

variable "replicas" {
  default = 1

}

variable "resource-limits-cpu" {
  default = 0.5

}

variable "resource-limits-memory" {
  default = "500Mi"

}

variable "resource-requests-cpu" {
  default = 0.1

}

variable "resource-requests-memory" {
  default = "50Mi"

}
