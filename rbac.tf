resource "kubernetes_role" "namespace-viewer" {
  metadata {
    name = "developer-viewer"
    namespace = "default"
  }

  rule {
    api_groups = [""]
    resources  = ["pods", "pods/logs", "pods/attach", "pods/exec", "services", "serviceaccounts", "configmaps", "persistentvolumes", "persistentvolumeclaims", "secrets"]
    verbs      = ["get", "list", "watch", "describe"]
  }

  rule {
    api_groups = ["apps"]
    resources  = ["deployments", "daemonsets", "statefulsets"]
    verbs      = ["get", "list", "watch", "describe"]
  }

  rule {
    api_groups = ["batch"]
    resources  = ["cronjobs", "jobs"]
    verbs      = ["get", "list", "watch", "describe"]
  }
}

resource "kubernetes_role_binding" "namespace-viewer" {
  metadata {
    name = "developer-viewer"
    namespace = "default"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Role"
    name      = kubernetes_role.namespace-viewer.metadata[0].name
  }
  subject {
    kind      = "User"
    name      = "developer"
    api_group = "rbac.authorization.k8s.io"
  }
}

