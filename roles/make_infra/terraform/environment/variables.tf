/*aws-name-settings*/
variable "project-name" {
  default     = "minecraft"
}

/*aws-network-settings*/
variable "vpc-cidr" {
  default     = "192.168.32.0/24"
}

variable "az" {
  default     = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
}


variable "public-subnets" {
  default     = ["192.168.32.0/25"]
}

variable "ec2-ami" {
  default = "ami-0ff21806645c5e492"
}

variable "ec2-key" {
  default = ""
}



/*aws-instance-settings*/
variable "ec2-config-01" {
      type = map(string)
      default = {
          ami = ec2-ami
          instance_type = "t2.small"
          instance_key = ec2-key 
          root_ebs_type = "gp2"
          root_ebs_size = "8"
      }
  }

variable "ec2-config-02" {
      type = map(string)
      default = {
          ami = ec2-ami
          instance_type = "t2.small"
          instance_key = 
          root_ebs_type = "gp2"
          root_ebs_size = "8"
      }
  }

variable "ec2-config-03" {
      type = map(string)
      default = {
          ami = ec2-ami
          instance_type = "t2.small"
          instance_key = ec2-key
          root_ebs_type = "gp2"
          root_ebs_size = "8"
      }
  }
