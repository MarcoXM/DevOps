# https://www.jenkins.io/doc/book/installing/
sudo apt-get update
# Step 2 - Install Java
sudo apt install -y default-jdk

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins


# - Enable the service to load during boot
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins