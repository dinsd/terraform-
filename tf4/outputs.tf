# output for pubIP

output "tfServerPublicIp" {
    value = aws_instance.tfServer.public_ip # label1.label2.public_ip in (argument reference documentation)
}

# output for serverState

output "tfServerState" {
    value = aws_instance.tfServer.instance_state # label1.label2.instance state from (argument reference documentation)
}