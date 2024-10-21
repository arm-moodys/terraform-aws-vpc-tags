resource "aws_ec2_tag" "private_subnets_karpenter_tag" {
  for_each    = toset(var.private_subnets_ids)
  resource_id = each.value
  key         = "karpenter.sh/cluster/${var.cluster_name}"
  value       = "discovery"
}

resource "aws_ec2_tag" "private_subnets_internal_elb_tag" {
  for_each    = toset(var.private_subnets_ids)
  resource_id = each.value
  key         = "kubernetes.io/role/internal-elb"
  value       = "1"
}
resource "aws_ec2_tag" "private_subnets_external_elb_tag" {
  for_each    = toset(var.public_subnets_ids)
  resource_id = each.value
  key         = "kubernetes.io/role/elb"
  value       = "1"
}