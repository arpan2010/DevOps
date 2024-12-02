## Steps to create VPC For IPv4 using Internet Gateway and Routetables.

1. Open AWS IAM User Account
2. Login to account
3. Search for VPC in search bar
4. Click on VPC
5. Click on Create VPC
6. Select - VPC only
Add Name Tag :- (to VPC)
[If want to create VPC using IPv4 IP-Address]

### Note: If you do not want to create VPC of IPv4 then also you have to give IPv4 CIDR address as it is compalsory for IPv4 as well as for IPv6.

7. Select - IPv4 CIDR 
[Add any IP-Address u want with CIDR] {20.10.0.0/24}
8. Select - No IPv6 CIDR block [as we are working for IPv4 VPC we will not use IPv6 CIDR Block]

Add Tags :- <br/>
Name      Practical-IPv4 <br/>
Owner     Ruthik <br/>
Purpose   Training <br/>

After filling those detials 

9. click on CREATE VPC

## Steps to create Subnet
1. Click on Subnet option under VPC.
2. Click on Create Subnet.
3. Select VPC ID u want to connect with VPC. Now Subnet Settings.
4. Subnet Name [Public/Private 1 or 2 as per the needs]
5. Availability Zone [ap-south-1a; ap-south-1b; ap-south-1c]
6. Select IPv4 VPC CIDR Block = Manual Input Give the IP Address with CIDR [Subnet calculator]
7. Enter IPv4 subnet CIDR block [Enter to All subnet with their IPv4 Address and Correct CIDR].

### Note: you can use subnet Calculator for the above subnet IP address.

8. Add Tags if necessary
9. Add a new subnet if it is necessary with all the above details as per needed.
10. Click on Create subnet if all the subnet details are added of every subnet.

## Steps to create IGW(Internet Gateway)
1. Click on Create Internet Gateway
2. Add name tag for IGW
3. Add tag if you want
4. Click on Create Internet Gateway Option.
5. Now take action 
6. Attach Internet Gateway to VPC of IPv4. 

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
