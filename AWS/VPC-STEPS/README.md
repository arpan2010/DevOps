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

## Steps to create Subnet
1. Click on Subnet button/option under VPC
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
6. Attach Internet Gateway to VPC 

## Steps to create Routetables
1. If you have public and private subnet then you have to create 2 route table Of ROUTE-PUBLIC and ROUTE-PRIVATE.
* {"There is always one by default routetable is present in VPC Resource Map Rename that default routetable with the name u want [Public/Private] } *
2. After Creating your type of route table Public or private then go to details and click on Subnet associations and click on edit subnet associations.
3. Then add the different subnet to each of the route table like private in private subnet association like private 1 and 2 and public in public subnet association like public 1 and 2 and save associations.
4. Now for Public IPv4 You have to add IGW (Internet gateway) to ROUTE-PUBLIC table so that is can have the access to the internet.
5. So now select the public route and click on edit routes.
6. Now, click on add routes and add a route in that you have to select the destination that is "0.0.0.0/0" which is used for internet in IPv4 were as ::/0 is used for internet for IPv6. 
7. Now click on Target and select Internet Gateway below that select the internet gateway you have made before in the previous steps.
8. Now click on saves changes and your internet gateway is now attached to your public ipv4 route table and it is accessible to the internet.

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

