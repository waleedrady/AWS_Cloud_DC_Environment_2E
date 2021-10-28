# DataCenter Enviroment 2C

Source Code for this Module (https://github.com/WEEMR/terraform-aws-DataCenter_Enviroment_2E)

Terraform Registery         (https://registry.terraform.io/modules/WEEMR/DataCenter_Enviroment_2E/aws/latest)

The module will create the below resources:

- 3 x VPCs, Hub, Spoke and FortiSandbox
- Networking Stack (VPC, Subnets, Route Tables, Security Groups, Internet Gateway and Nat Gateway) - Please refer to the diagram below.
- 2 x FortiGate with 3 interfaces (Two Interfaces in two different Public Subnets and one in the Private subnets)
- Windows Server 2019 Behind the FGT Port 3 [LAN]
- Ubunutu Server with Apache installed, iperf, fzf, pydf, firefox, lynx and elinks installed on it behind the FGT port 3 [LAN]
- Route53 DNS Public Hosted Zones
- FortiManager, FortiAnalyzer and FortiAuthenticator will be deployed as well behind the Hub FGT on Port 3 [LAN]
- FortiSandbox in an isolated VPC with Public and Private Subnet [Public Subnet have direct internet access via IGW and Private Subnet have Internet Access for the Scan Hosts via NAT Gateway]
- VPC Flow Logs


![image](https://user-images.githubusercontent.com/83562796/139342020-5b353c88-3283-4506-ac53-88a436c017ee.png)


// The DNS Hosted Zones must be sub-zones for a domain that is registered or managed by AWS Route53 //

// i.e xyz.com is the domain name and you will create the subzone Lab1.xyz.com // 

![image](https://user-images.githubusercontent.com/83562796/139341780-276011ce-247b-473a-a152-1c1cebd12f13.png)
