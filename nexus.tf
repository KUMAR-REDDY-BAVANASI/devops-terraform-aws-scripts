
# data "template_file" "userrrrrr_data" {
#   template = "${file("nexus.sh")}"
# }

# resource "aws_instance" "nexus" {
# ami = "ami-0443305dabd4be2bc"
# instance_type = "t2.micro" 
# subnet_id = aws_subnet.public-subnet-1.id
# security_groups = ["${aws_security_group.apache2-security-group.id}"]
# key_name = "${aws_key_pair.petclinic.id}"
# tags = {
#     Name = "nexus"
#   }
# } 




# resource "aws_eip" "eipe" {
#   instance = aws_instance.nexus.id
#   vpc      = true
# }

