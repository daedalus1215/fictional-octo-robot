provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

locals { 
    common_tags = {
        Owner = "DevOps Team"
        service = "backend"
    }
}

resource "aws_instance" "app-dev"   { 
    ami = "0a699202e5027c10d"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "db-dev"   { 
    ami = "0a699202e5027c10d"
    instance_type = "t2.small"
    tags = local.common_tags
}

resource "aws_ebs_volume" "db-ebs"   { 
    availability_zone = "us-west-2a"
    size = 8
    tags = local.common_tags
}