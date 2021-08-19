module "vpcmodule" {
	source = "./modules/vpc_module"
	cidr_block = "${var.cidr}"
	}