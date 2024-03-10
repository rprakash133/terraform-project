# data "aws_ami" "test1" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["Windows_Server-2019-English-Full-Base-*"]
#   }
#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
#   owners = ["801119661308"] # Canonical
# }


resource "aws_instance" "test1" {
  ami                         = var.ami #data.aws_ami.test1.id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  #user_data                   = templatefile(var.user_data_filepath,)
  key_name                    = var.key_name
  iam_instance_profile        = var.iam_instance_profile
  disable_api_termination     = var.disable_api_termination
  tags                        = merge(var.tags)
}



resource "aws_ebs_volume" "test1" {
  availability_zone = var.availability_zone
  size              = 40
}

resource "aws_volume_attachment" "test1" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.test1.id
  instance_id = aws_instance.test1.id
}

resource "aws_cloudwatch_metric_alarm" "test1" {

  alarm_name                = "cpu-utilization"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120" #seconds
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "test1 metric monitors ec2 cpu utilization"
  insufficient_data_actions = []

  dimensions = {
    InstanceId = aws_instance.test1.id
  }

}