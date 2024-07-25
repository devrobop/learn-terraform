resource "aws_instance" "instance" {
#  count = length(var.components)
for_each = var.components


  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "${each.key}.dev"
  }

provisioner "remote-exec" {
  connection{
    user = "ec2-user"
    password = "DevOps321"
    host = self.private_ip
  }


  inline = [
    "sudo pip-3.11 install ansible",
    "ansible-pull -i localhost, -U https://github.com/prudhvi-1122/roboshop-ansible main.yml -e env=dev -e role_name=${each.key}"
    ]
 }
}

resource "aws_route53_record" "dns_record" {
  for_each = var.components
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "${each.key}.dev.$(var.domain_name)"
  type    = "A"
  ttl     = 15
 records = [aws_instance.instance[count.index].private_ip]
}
