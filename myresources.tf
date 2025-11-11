resource "aws_instance" "test_instance" {
ami = "ami-0b0ea68c435eb488d"
instance_type = "t2.nano"
 tags = {
        Name = "Demo-VM"
    }
}

