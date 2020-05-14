#####################################################################
##
##      Created 5/13/20 by admin. for tim.yaml
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

module "firewall-ssh" {
  source        = "tasdikrahman/network-firewall/google"
  name          = "ssh"
  network       = "${data.google_compute_network.test-vpc.name}"
  protocol      = "tcp"
  ports         = ["22"]
  source_ranges = ["0.0.0.0/0"]
}

module "network" {
  source = "terraform-google-modules/network/google"
  version = "2.3.0"
  auto_create_subnetworks  =  "true"
  delete_default_internet_gateway_routes  =  "false"
  routes  =  "169.61.224.0"
  subnets  =  "10.240.0.0/24"
  routing_mode  =  "GLOBAL"
  network_name  =  "private"
  description  =  "desc"
  secondary_ranges  =  ""
  shared_vpc_host  =  ""
  project_id  =  ""
}

data "google_compute_network" "test-vpc" {
  name = "${var}"
}

