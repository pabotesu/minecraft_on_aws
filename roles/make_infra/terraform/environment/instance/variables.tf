variable "project-name" {
  default     = ""
}
variable "vpc-id" {
  default     = ""
}

variable "az" {
  default     = ""
}

variable "public-subnets-ids" {
  default     = ""
}


variable "sg-for_server-id" {

  default     = ""
}

variable "ec2-config-01" {
      type = map(string)
      default = {
          ami = ""
          instance_type = ""
          instance_key = ""
          root_ebs_type = ""
          root_ebs_size = ""
      }
}

variable "ec2-config-02" {
      type = map(string)
      default = {
          ami = ""
          instance_type = ""
          instance_key = ""
          root_ebs_type = ""
          root_ebs_size = ""
      }
}

variable "ec2-config-03" {
      type = map(string)
      default = {
          ami = ""
          instance_type = ""
          instance_key = ""
          root_ebs_type = ""
          root_ebs_size = ""
      }
}
