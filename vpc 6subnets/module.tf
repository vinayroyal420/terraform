module "vpc_subnets" {
  source = "github.com/vinayroyal420/terraform_modules"

  vpc_details = {
    cidr = "10.0.0.0/21"
    name = "ohio_vpc"
  }
  subnet_details = {
    az = ["us-west-2a","us-west-2a","us-west-2b","us-west-2b","us-west-2c","us-west-2c"]
    names = ["db1","app1","web1","db2","app2","web2"]
  }
}
output "my_vpc_id" {
  value = module.vpc_subnets.vpc_id
}
output "subnet_count_from_module" {
  value = module.vpc_subnets.subnets_count
}