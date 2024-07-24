# Plain  variable

# number
variable "x" {
  default = 10
}

# boolean
variable "y" {
  default = true
}

# string
variable "z" {
  default = "Hello"
}
# list variable
variable "1"{
  default = [10, 20, "abc", false ]
}

# values in the list need no be same type

# Map Variable
variable "m" {
  default = {
    course = "DevOps"
   trainer = "John"
 }
}
variable "abc" {
  default = 10
}
########### values,numbers,and booleans need not to be quoted ##########

#outputs
#Direct values does not require to be accessed with ${}
output "x" {
  value = var.x
}

###### Accessing variable has a combination with a string then we need to refer the vaiable with ${}

output "x1" {
  value = "value of x - ${var.x}"
}

output "1" {
  value = var.1[0]
}

output "m" {
  value = "Course Name - ${var.m["Course"]}, Trainer Name - ${var.m["trainer"]}"
}