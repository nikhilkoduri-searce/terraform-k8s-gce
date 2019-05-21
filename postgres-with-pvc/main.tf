######### postgres Service #####

resource "k8s_manifest" "postgres_service" {
  status  = "${var.kubeconfig_path}"
  name    = "postgres"
  kind    = "Service"
  content = "${file("${path.module}/postgresql-resources/postgres-service.yaml")}"
}

######### postgres ConfigMap #####

resource "k8s_manifest" "postgres_configmap" {
  status  = "${var.kubeconfig_path}"
  name    = "postgres-config"
  kind    = "ConfigMap"
  content = "${file("${path.module}/postgresql-resources/postgres-configmap.yaml")}"
}

########## postgres Deployment #####

resource "k8s_manifest" "postgres_deploy" {
  status  = "${var.kubeconfig_path}"
  name    = "postgres"
  kind    = "StatefulSet"
  content = "${file("${path.module}/postgresql-resources/postgres-statefulset.yaml")}"
}
