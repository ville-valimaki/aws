# AWS cloudformation templates

Basic aws cloudformation templates and some useful resources.

## Templates
Templates in this repository are just rough base templates intended to be modified, but will work as such.

### Openvpn access server
EC2 instance dependant of a public subnet for openvpn access setup with easy installation.

### Static hosting
S3 bucket with cloudfront for static hosting of frontend apps.

### VPC
A vpc with two private and two public subnets for simple multi-az hosting, easily expandable.

A vpc with one private and one public subnet to avoid excessive costs for private use. Could drop the privaet subnet entirely to avoid allocation of ip address for the nat.


## Audit tool
A quick tool for running a lightweight sanity check on resources