resource "aws_instance" "test_instance" {
ami = lookup(var.AMIS, var.AWS_REGION)
instance_type = "t2.nano"
 tags = {
        Name = "Demo-VM"
    }
    security_groups = "${var.Security_Group}"
    vpc_security_group_ids = [aws_security_group.default.id]
}

