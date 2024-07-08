variable "profile" {
  description = "Account Profile"
  type        = string
  default     = "terra"
}

variable "bucket_name" {
  description = "nome do bucket"
  type        = string
  default     = "adriano-terra-morais"
}


variable "region" {
  description = "regiao aws"
  type        = string
  default     = "us-east-1"
}
