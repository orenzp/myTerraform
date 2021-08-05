resource "linode_sshkey" "sshkey" {
  label   = "id_rsa_linode"
  ssh_key = chomp(file("~/.ssh/id_rsa_linode.pub"))
}
resource "linode_instance" "node" {
  count           = var.instance_count
  image           = "linode/ubuntu20.04"
  label           = "linode-${count.index}"
  group           = "Terraform"
  region          = "us-east"
  type            = "g6-nanode-1"
  authorized_keys = [ linode_sshkey.sshkey.ssh_key ]
  root_pass       = var.root_pass
}
resource "linode_instance_ip" "instance_ip" {
  count     = 0 #var.instance_count
  linode_id = linode_instance.node[count.index].id
  public    = true
}