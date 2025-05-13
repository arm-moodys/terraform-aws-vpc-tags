variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "private_subnets_ids" {
  description = "List of subnets IDs to tag"
  default     = []
  type        = list(string)
}

variable "public_subnets_ids" {
  description = "List of public subnets IDs to tag"
  default     = []
  type        = list(string)
}
