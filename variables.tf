variable "instance_type" {
    default = "t3.micro"
}

variable "sg_ids" {
    default = ["sg-0b4e76942b2d30254"]
}

variable "tags" {
    default = {
        Name = "module-test"
    }
}