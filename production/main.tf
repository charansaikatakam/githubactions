module "common" {
  source              = "../modules/resourcegroup"
  cidr_block          = var.cidr_block
}