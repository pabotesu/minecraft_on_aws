resource "aws_instance" "server-01" {
    count =  length(var.public-subnets-ids[0])
    ami = lookup(var.ec2-config-01, "ami")
    instance_type = lookup(var.ec2-config-01, "instance_type")
    key_name = lookup(var.ec2-config-01, "instance_key")
    associate_public_ip_address = true
    vpc_security_group_ids = ["${var.sg-for_server-id}"]
    subnet_id = var.public-subnets-ids[0] [count.index]
    root_block_device {
        volume_type = lookup(var.ec2-config-01, "root_ebs_type")
        volume_size = lookup(var.ec2-config-01, "root_ebs_size")
    }

       tags = {
       Name = "${var.project-name}-public-01"
       }
}
resource "aws_instance" "server-02" {
    count =  length(var.public-subnets-ids[0])
    ami = lookup(var.ec2-config-02, "ami")
    instance_type = lookup(var.ec2-config-02, "instance_type")
    key_name = lookup(var.ec2-config-02, "instance_key")
    associate_public_ip_address = true
    vpc_security_group_ids = ["${var.sg-for_server-id}"]
    subnet_id = var.public-subnets-ids[0] [count.index]
    root_block_device {
        volume_type = lookup(var.ec2-config-02, "root_ebs_type")
        volume_size = lookup(var.ec2-config-02, "root_ebs_size")
    }

       tags = {
       Name = "${var.project-name}-public-02"
       }
}

resource "aws_instance" "server-03" {
    count =  length(var.public-subnets-ids[0])
    ami = lookup(var.ec2-config-03, "ami")
    instance_type = lookup(var.ec2-config-03, "instance_type")
    key_name = lookup(var.ec2-config-03, "instance_key")
    associate_public_ip_address = true
    vpc_security_group_ids = ["${var.sg-for_server-id}"]
    subnet_id = var.public-subnets-ids[0] [count.index]
    root_block_device {
        volume_type = lookup(var.ec2-config-03, "root_ebs_type")
        volume_size = lookup(var.ec2-config-03, "root_ebs_size")
    }

       tags = {
       Name = "${var.project-name}-public-03"
       }
}