### ("Note: Steps of terraform for creating VPC using  CLI")

provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = {
      "Owner"   = "Arpan"
      "Purpose" = "Practical"
    }
  }

}
resource "aws_vpc" "demo_vpc" {
  cidr_block = "20.10.0.0/16"
  tags = {
    "Name" = "Demo2"
  }
}

resource "aws_subnet" "Pub1" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = "20.10.0.0/18"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "Public1"
  }
}

resource "aws_subnet" "Pub2" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = "20.10.64.0/18"
  availability_zone = "ap-south-1b"
  tags = {
    "Name" = "Public2"
  }

}

resource "aws_subnet" "Pvt1" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = "20.10.128.0/18"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "Private1"
  }
}

resource "aws_subnet" "Pvt2" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = "20.10.192.0/18"
  availability_zone = "ap-south-1b"
  tags = {
    "Name" = "Private2"
  }
}

resource "aws_internet_gateway" "Demo2-IGW" {
  vpc_id = aws_vpc.demo_vpc.id
  tags = {
    Name = "demo2_igw"
  }
}

resource "aws_route_table" "Pub1" {
  vpc_id = aws_vpc.demo_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Demo2-IGW.id
  }
  tags = {
    Name = "Public"
  }
}

resource "aws_default_route_table" "Pvt" {
  default_route_table_id = aws_vpc.demo_vpc.default_route_table_id
  tags = {
    Name = "Private"
  }
}

resource "aws_route_table_association" "RT1-association1" {
  route_table_id = aws_route_table.Pub1.id
  subnet_id      = aws_subnet.Pub1.id
}

resource "aws_route_table_association" "RT1-association2" {
  route_table_id = aws_route_table.Pub1.id
  subnet_id      = aws_subnet.Pub2.id
}

resource "aws_route_table_association" "RT2-association1" {
  route_table_id = aws_default_route_table.Pvt.id
  subnet_id      = aws_subnet.Pvt1.id
}

resource "aws_route_table_association" "RT2-association2" {
  route_table_id = aws_default_route_table.Pvt.id
  subnet_id      = aws_subnet.Pvt2.id
}
