variable "kubernetes_namespace" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes namespace to deploy kubernetes dashboard controller."
}

variable "kubernetes_namespace_create" {
  type = bool
  default = true
  description = "Do you want to create kubernetes namespace?"
}

variable "kubernetes_resources_name_prefix" {
  type = string
  default = ""
  description = "Prefix for kubernetes resources name. For example `tf-module-`"
}

variable "kubernetes_resources_labels" {
  type = map(string)
  default = {}
  description = "Additional labels for kubernetes resources."
}

variable "kubernetes_deployment_image_registry" {
  type = string
  default = "kubernetesui/dashboard"
}

variable "kubernetes_deployment_image_tag" {
  type = string
  default = "v2.1.0"
}

variable "kubernetes_deployment_metrics_scraper_image_registry" {
  type = string
  default = "kubernetesui/metrics-scraper"
}

variable "kubernetes_deployment_metrics_scraper_image_tag" {
  type = string
  default = "v1.0.6"
}

variable "kubernetes_deployment_node_selector" {
  type = map(string)
  default = {
    "kubernetes.io/os" = "linux"
  }
  description = "Node selectors for kubernetes deployment"
}

variable "kubernetes_dashboard_csrf" {
  type = string
  description = "CSRF token"
}

variable "alb_schema" {
  type = string
  default = "internal"
}

variable "alb_certificate_arn" {
  type = string
}

variable "dns_hostname" {
  type = string
}