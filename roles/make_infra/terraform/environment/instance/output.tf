output "minecraft-server-01-ids" {
  value = ["${aws_instance.server-01.*.id}"]
}

output "minecraft-server-02-ids" {
  value = ["${aws_instance.server-02.*.id}"]
}

output "minecraft-server-03-ids" {
  value = ["${aws_instance.server-03.*.id}"]
}