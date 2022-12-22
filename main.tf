module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.11.2"
  gcp_project = "jenkins-jx-372416"
  cluster_name = "jsx-cluster"
}
terraform {
  backend "gcs"{
    bucket = "jenkins-jx-store-files"
    prefix = "teraform/state"
  }
}