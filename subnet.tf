resource "aws_db_subnet_group" "default" {
  name = "main"

  subnet_ids = ["subnet-f521f2d4",
    "subnet-756cb913",
    "subnet-d69b83e8",
  ]
}
