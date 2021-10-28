module "DC_Enviroment_2E" {

  source  = "WEEMR/DataCenter_Enviroment_2E/aws"
  version = "0.1.0"

  # insert the 7 required variables here

  # ------------------------------------------------------ AWS Account Settings ------------------------------------------ #

  access_key = "YOUR ACCESS KEY"
  secret_key = "YOUR SECRET KEY"

  # ------------------------------------------------------ Variables ----------------------------------------------------- #

  username = "jdoe"  #  Your 1st Initial, Last Name to tag resources i.e jdoe
  keyname  = "YOUR AWS KEY NAME"   #  Your AWS Keypair name to create resources
  Password = "Fortinet123!"        #  TO DO: Change the password from "fortinet123" to your own password

  # ------------------------------------------------------  DNS ------------------------------------------------------------ #

  Public_Hosted_Zone = "fortinetpslab.com"            # You must have a domain registerd with AWS Route53 or Managed by AWS with a Hosted Zone Created. i.e xyz.com
  SubHosted_Zone     = "jdoe.fortinetpslab.com" # Creates a Public SubHosted zone  - Enter a sub-hosted name for the domain above. i.e lab.xyz.com

  # ------------------------------------------------------ Reference Module ------------------------------------------------ #

  #            Terraform Registery Module = https://registry.terraform.io/modules/WEEMR/DataCenter_Enviroment_2E/aws/latest

  #                             Source Code = https://github.com/WEEMR/terraform-aws-DataCenter_Enviroment_2E

}

#  ----------------  Outputs  -----------------  # 

output "AWS_US_East_Hub_1_VPC_ID" {
  value = module.DC_Enviroment_2E.AWS_US_East_Hub_1_VPC_ID
}

output "AWS_US_East_Spoke_1_VPC_ID" {
  value = module.DC_Enviroment_2E.AWS_US_East_Spoke_1_VPC_ID
}



# ---------------- ---------------- ---------------- Hub 1

output "hub_1_WAN_1_IP" {
  value = module.DC_Enviroment_2E.hub_1_WAN_1_EIP
}

output "hub_1_WAN_2_IP" {
  value = module.DC_Enviroment_2E.hub_1_WAN_2_EIP
}

output "hub1_FGT_DNS_Name" {
  value = module.DC_Enviroment_2E.hub1_FGT_DNS_Name
}

output "hub1_Linux_DNS_Name" {
  value = module.DC_Enviroment_2E.hub1_Linux_DNS_Name
}

output "hub1_FAZ_DNS_Name" {
  value = module.DC_Enviroment_2E.hub1_FAZ_DNS_Name
}

output "hub1_FMG_DNS_Name" {
  value = module.DC_Enviroment_2E.hub1_FMG_DNS_Name
}

output "hub1_Windows_DNS_Name" {
  value = module.DC_Enviroment_2E.hub1_Windows_DNS_Name
}

output "hub1_Windows_Password" {                                    # Your AWS KEY file below
  value = rsadecrypt(module.DC_Enviroment_2C.hub1_Windows_Password, file("./AWS_Key.pem"))
}

# ---------------- ---------------- ---------------- spoke 1

output "spoke_1_WAN_1_IP" {
  value = module.DC_Enviroment_2E.spoke_1_WAN_1_EIP
}

output "spoke_1_WAN_2_IP" {
  value = module.DC_Enviroment_2E.spoke_1_WAN_2_EIP
}

output "spoke1_FGT_DNS_Name" {
  value = module.DC_Enviroment_2E.spoke1_FGT_DNS_Name
}

output "spoke1_Linux_DNS_Name" {
  value = module.DC_Enviroment_2E.spoke1_Linux_DNS_Name
}

output "spoke1_Windows_DNS_Name" {
  value = module.DC_Enviroment_2E.spoke1_Windows_DNS_Name
}

output "spoke1_Windows_Password" {                                    # Your AWS KEY file below
  value = rsadecrypt(module.DC_Enviroment_2C.spoke1_Windows_Password, file("./AWS_KEY.pem"))
}
