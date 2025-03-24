#!/bin/bash

# Install apache2
sudo apt install -y apache2

# Wait for 20 seconds
sleep 20

# Delete the default index.html
sudo rm -f /var/www/html/index.html

# Create a new index.html with "Hello World"
echo "<html><body><h1>Hello World!, By Sahand Valizadeh 145070231</h1></body></html>" | sudo tee /var/www/html/index.html > /dev/null

# Restart Apache to apply changes
sudo systemctl restart apache2
