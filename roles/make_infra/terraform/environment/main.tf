module "aws_vpc" {
  source = "./network/"

  #Set Palamater
  project-name     = var.project-name
  vpc-cidr         = var.vpc-cidr
  az               = var.az
  public-subnets   = var.public-subnets
}

module "aws_ec2" {
  source = "./instance/"

  #Set Palamater
  project-name        = var.project-name
  vpc-id              = module.aws_vpc.vpc-id
  public-subnets-ids  = module.aws_vpc.public-subnets-ids
  az                  = var.az
  sg-for_server-id = module.aws_vpc.sg-for_server-id
  ec2-config-01          = var.ec2-config-01
  ec2-config-02          = var.ec2-config-02
  ec2-config-03          = var.ec2-config-03

}

