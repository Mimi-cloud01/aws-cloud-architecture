#!/bin/bash
# ==============================================================================
# Script Name: deploy_shopease_vpc.sh
# Description: Configures ShopEase-VPC, subnets, and deploys Apache Web Server 
#              on Amazon Linux 2023.
# ==============================================================================

# 1. Environment & Network Parameters
VPC_CIDR="10.10.0.0/16
WEB_SUBNET_A="10.10.1.0/24
WEB_SUBNET_B="10.10.2.0/24

echo "Initializing ShopEase-VPC deployment across CIDR: ${VPC_CIDR}...

# 2. Apache Web Server Bootstrap (Amazon Linux 2023)
sudo dnf update -y
sudo dnf install -y httpd

# Start and enable Apache service
sudo systemctl start httpd
sudo systemctl enable httpd
# Create standard landing page
echo "<h1>Welcome to ShopEase Web Server</h1>" | sudo tee /var/www/html/index.html

echo "Web server setup complete and service active.
