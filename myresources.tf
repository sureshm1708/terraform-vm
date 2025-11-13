resource "aws_instance" "test_instance" {
ami = lookup(var.AMIS, var.AWS_REGION)
instance_type = "t2.nano"
 tags = {
        Name = "Demo-VM"
    }
   security_group = $(var.Security_Group)
}

