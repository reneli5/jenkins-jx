module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.11.2"
  gcp_project = "jenkins-x-372422"
  cluster_name = "jenkin-cluster"
}
output "jx_requirements" {
  value = module.jx.jx_requirements
} 
terraform {
  backend "gcs"{
    bucket = "jenkins-jstore"
    prefix = "teraform/state"
  }
}