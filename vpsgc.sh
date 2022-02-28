wget -O ng.sh https://bit.ly/3eKrrux > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "Wait Downloading file 3-4 minutes"
echo "EM"
echo "================================"
echo "Installing the Desktop enviroment and additional software"
sudo add-apt-repository ppa:x2go/stable -y > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get -qq install xfce4 xfce4-terminal xfce4-taskmanager htop leafpad chromium-browser x2goserver x2goserver-xsession > /dev/null 2>&1
echo "================================"
echo "Desktop Installation complete"
echo "================================"
echo "Install Brave"
echo "==============="
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
echo "===================80%"
sudo service xrdp start > /dev/null 2>&1
echo "=======================100%"
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close tab colab to keep rdp running 12 hours"
echo "Thank you EM"
echo "===================================="
sleep 9876543210
