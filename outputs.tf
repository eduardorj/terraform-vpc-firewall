#####################################################################
##
##      Created 5/13/20 by admin. for tim.yaml
##
#####################################################################

output "network_subnets" {
  value = "${module.network.subnets}"
  description = "A map with keys of form subnet_region/subnet_name and values being the outputs of the google_compute_subnetwork resources used to create corresponding subnets."
}

output "network_network" {
  value = "${module.network.network}"
  description = "The created network"
}

output "network_route_names" {
  value = "${module.network.route_names}"
  description = "The route names associated with this VPC"
}

output "network_subnets_flow_logs" {
  value = "${module.network.subnets_flow_logs}"
  description = "Whether the subnets will have VPC flow logs enabled"
}

output "network_subnets_private_access" {
  value = "${module.network.subnets_private_access}"
  description = "Whether the subnets will have access to Google API's without a public IP"
}

output "network_subnets_regions" {
  value = "${module.network.subnets_regions}"
  description = "The region where the subnets will be created"
}

output "network_network_name" {
  value = "${module.network.network_name}"
  description = "The name of the VPC being created"
}

output "network_project_id" {
  value = "${module.network.project_id}"
  description = "VPC project id"
}

output "network_network_self_link" {
  value = "${module.network.network_self_link}"
  description = "The URI of the VPC being created"
}

output "network_subnets_secondary_ranges" {
  value = "${module.network.subnets_secondary_ranges}"
  description = "The secondary ranges associated with these subnets"
}

output "network_subnets_self_links" {
  value = "${module.network.subnets_self_links}"
  description = "The self-links of subnets being created"
}

output "network_subnets_ips" {
  value = "${module.network.subnets_ips}"
  description = "The IPs and CIDRs of the subnets being created"
}

output "network_subnets_names" {
  value = "${module.network.subnets_names}"
  description = "The names of the subnets being created"
}


