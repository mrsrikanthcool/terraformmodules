provider "aws" {

  region="ap-south-1"

   
}

module "vpc" {
    source = "E:\\NewWorkspace\\modules\\vpc"
    vpc_name = "vpc"
    vpc_id="${module.vpc.vpc_id}"
        
        
    }
  
module "server1" {
    source = "E:\\NewWorkspace\\modules\\Ec2"
    subnet_id ="${module.vpc.public-subnet-1-cidr}"


  
}
