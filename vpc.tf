module "network" {
  source  = "terraform-google-modules/network/google"
  version = "2.5.0"
  # insert the 3 required variables here
  network_name = "lavrèmen-vpc"
  project_id = var.project
  subnets = [{
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }]
}