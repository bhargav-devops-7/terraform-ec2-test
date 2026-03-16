module "example" {
    source = "git::https://github.com/bhargav-devops-7/terraform-aws-instance.git?ref=main"

    ami_id = data.aws_ami.joindevops.id
    # ami_id = var.ami_id
    instance_type = var.instance_type
    sg_ids = var.sg_ids
    tags = var.tags
}

 output "pub_ip" {
    value = module.example.public_ip
}

output "priv_ip" {
    value = module.example.private_ip
}

output "inst_id" {
    value = module.example.instane_id
}