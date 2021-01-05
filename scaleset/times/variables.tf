variable "environment" {
  type = string
  description = "production environment"
}

variable "location" {
  type = string
}

variable "timezone" {
  type = string
}

variable "outhours" {
  type = number
  description = "hours in which machines are scaled down"
}

variable "outmins" {
  type = number
  description = "the minutes in which the machines are scaled down"
}

variable "inhours" {
  type = number
  description = "the hours in which the machines are scaled up"
}

variable "inmins" {
  type = number
  description = "the minutes in which the machines are scaled up"
}