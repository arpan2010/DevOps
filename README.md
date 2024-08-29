##* Steps to create VPC
Open AWS IAM User Account
Login to account
Search for VPC in search bar
Click on VPC
Click on Create VPC
Select - VPC only
Add Name Tag :- (to VPC)
[If want to create VPc using IPv4 IP-Address]
Select - IPv4 CIDR 
[Add any IP-Address u want with CIDR]
20.10.0.0/24
Select - No IPv6 CIDR block
Add Tags :-
Name 
Owner
Purpose
After filling those detials click on CREATE VPC

*Steps to create Routetables
If we want to create 2 routetables{"There is always one bydefault routetable is present"}
Rename that default routetable with the name u want [Public/Private]

*Steps to create Subnet
Click on Subnet button/option under in VPC
Click on Create VPC
Select VPC/VPCID u want to connect VPC with Routetable
Click of Create Subnet Button
Subnet Name
Availability Zone [ap-south-1a;ap-south-1b;ap-south-1c]
Select IPv4 CIDR Block = Manual Input
Enter IPv4 VPC CIDR block [Subnet calculator]
Enter IPv4 subnet CIDR block
Add Tags if necessary

*Steps to creare IGW(Internet Gateway)
Click on Create Internet Gateway
Add name tag for IGW
Add tag if want
Click on Create Internet Gateway Button/Option
Now take action 
Attach VPC to Internet Gateway 

*Steps to access network to subnet
Click on Routetable
Select the created subnet u want to access that to internet-network
Click on subnet-associations
In Explicit subnet associations ;select edit association
Click on Edit Route
Add route
Select IP-Address [0.0.0.0/0]
Select Internet Gateway option 
Then select igw: u want to associate
Click on Save Changes Button/Option

Now open subnets
Edit subnets
Select subnets u want 
Click on Save Associations Button/Option
(Same steps for all subnets Private/Public)

