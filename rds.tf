resource "aws_db_instance" "db" {

  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = "db"
  username               = "bernard"
  password               = "bernard123"
  parameter_group_name   = "default.mysql5.7"
  publicly_accessible    = true
  db_subnet_group_name   = "${aws_db_subnet_group.default.name}"
  skip_final_snapshot    = true
  vpc_security_group_ids = ["${aws_security_group.security.id}"]
}
