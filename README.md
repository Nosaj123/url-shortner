 #PHP-URL-Shortener-IP-Limit
A Simple PHP Script for URL shortening tool. 

/* 
Author: Marc
*/

FEATURES

- Uses Terraform to deploy an ASG for HA & Scaling Purposes
- Terraform script will deploy a SG to allow open connection (for the purpose of this project)
- By default it has 4 characters token which means 14,776,336 possible URL Shorteners. This number can increase if you add more characters on a token.
- Prevents replica URL Shorteners in Database. 
- Prevent spammers/bots. By default an IP can send 40 requests per minute.
- IP address which sends more than 40 request per minute will be blocked and banned for 10 minutes.

Installation:

1. Install Terraform on your Machine and Add Secret/Access Key from your AWS account - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
2. Clone the repo and save the files in the folder you plan to initialize Terraform
3. In main.tf, line 10 - change .pem key to your own key name (for ssh purposes)
    a. terraform init
    b. terraform plan
    c. terraform validate
    d. terraform apply (optional - terraform apply -auto-approve)
4. SSH into the server and modify the config.php that is in the:
    a. DB Name
    b. Username  
    c. Password
5. Visit the public IP and test!
    a. Full domain name is required (https://google.com)