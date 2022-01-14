output "public_1" {
  value = module.vpc.public_subnet_1
}
output "public_2" {
  value = module.vpc.public_subnet_2
}
output "database_1" {
  value = module.vpc.database_subnet_1
}
output "database_2" {
  value = module.vpc.database_subnet_2
}