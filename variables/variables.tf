variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {

  type    = string
  default = "t2.micro"

}

variable "ec2_tags" {

  type = map(any)
  default = {
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backend-dev"
  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "expense-backend-dev"
  }
}


/* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars --> How do you override default variable values in terraform? terraform.tfvars --> You can override default values in terraform
3. env var --> TF_VAR_<var-name> (export TF_VAR_Instance_type="t2.large") (unset TF_VAR_Instance_type)
4. default values
5. user prompt */