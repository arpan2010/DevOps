## Steps to create VPC

1. Open AWS IAM User Account
2. Login to account
3. Search for VPC in search bar
4. Click on VPC
5. Click on Create VPC
6. Select - VPC only
Add Name Tag :- (to VPC)
[If want to create VPc using IPv4 IP-Address]
7. Select - IPv4 CIDR 
[Add any IP-Address u want with CIDR]
20.10.0.0/24
8. Select - No IPv6 CIDR block
Add Tags :-
Name 
Owner
Purpose
After filling those detials 
9. click on CREATE VPC

## Steps to create Routetables
1. If we want to create 2 routetables
* {"There is always one bydefault routetable is present"}
* Rename that default routetable with the name u want [Public/Private]

## Steps to create Subnet
1. Click on Subnet button/option under in VPC
2. Click on Create VPC
3. Select VPC/VPCID u want to connect VPC with Routetable
4. Click of Create Subnet Button
5. Subnet Name
6. Availability Zone [ap-south-1a;ap-south-1b;ap-south-1c]
7. Select IPv4 CIDR Block = Manual Input
8. Enter IPv4 VPC CIDR block [Subnet calculator]
9. Enter IPv4 subnet CIDR block
10. Add Tags if necessary

## Steps to create IGW(Internet Gateway)
1. Click on Create Internet Gateway
2. Add name tag for IGW
3. Add tag if want
4. Click on Create Internet Gateway Button/Option
5. Now take action 
6. Attach VPC to Internet Gateway 

## Steps to access network to subnet
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

