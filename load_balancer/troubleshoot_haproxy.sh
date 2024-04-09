heck if the repository URL is accessible
ping -c 3 ppa.launchpad.net

# Verify if the repository is still available and the package is maintained
curl -I http://ppa.launchpad.net/vbernat/haproxy-1.8/ubuntu/dists/focal/Release
# Search for alternative repositories hosting HAProxy
apt search haproxy

# Add a different repository if available
# Example: Add HAProxy PPA maintained by certbot
sudo add-apt-repository ppa:certbot/haproxy-plugin
sudo apt update
# Install HAProxy from official Ubuntu repositories
sudo apt install haproxy
# Download HAProxy package manually (if necessary)
wget <URL-to-HAProxy-package>

# Install HAProxy manually
sudo dpkg -i haproxy_package.deb

# Resolve dependencies (if any)
sudo apt-get -f install
# Update package repositories
sudo apt update

