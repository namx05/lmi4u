#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

#Repos and Software kinda things !!
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git 
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt install -y curl
sudo apt install -y ruby
sudo apt install -y cmatrix
sudo apt install preload
sudo apt install figlet

#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz
					sudo tar -xvf go1.16.3.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					rm -rfv go1.16.3.linux-amd64.tar.gz
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


#install chromium
echo "---------- Installing Chromium ----------"
sudo snap install chromium
echo "---------- done ----------"

#Install sublime text editor
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo "---------- Done ----------"

#Installing AWS cli
#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
sudo apt install -y awscli
echo "Don't forget to set up AWS credentials!"

#create a tools folder in ~/
mkdir ~/tools
cd ~/tools/



#Installing Assetfinder
echo "---------- Installing Assetfinder ----------"
go get -u github.com/tomnomnom/assetfinder
cd ~/tools/
echo "---------- Done ----------"

#Installing subfinder
echo "---------- Installing SubFinder ----------"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
echo "done"

#Instaloing Aquatone
#For screenshot
echo "---------- Installing Aquatone ----------"
go get -u github.com/shelld3v/aquatone
cd ~/tools/
echo "---------- done ----------"

#Installing magic recon 
#for all type of recon
echo "Installing magic recon"
git clone https://github.com/robotshell/magicRecon
cd ~/tools/
echo "done"

#Installing Httpx
#for live domains
echo "---------- Installing httpx ----------"
git clone https://github.com/projectdiscovery/httpx.git
cd httpx/cmd/httpx
go build
echo "Installation Done "
mv httpx /usr/local/bin/
httpx -version
cd ~/tools/
echo "---------- done ----------"

#Installing Waybackurls 
#for old urls
echo "---------- Installing waybackurls ----------"
git clone https://github.com/tomnomnom/waybackurls
cd waybackurls
go build
sudo mv waybackurls usr/local/bin
cd ~/tools/
echo "---------- Done ----------"

#Installing gau
#Get All Urls
echo "---------- Installing gau ----------"
git clone https://github.com/lc/gau
cd gau*
go build
sudo mv gau /usr/local/bin
cd ~/tools/
echo "---------- Done ----------"

#Installing hakrawler
echo "---------- Installing hakrawler ----------"
GO111MODULE=on go get -v github.com/hakluke/hakrawler
cd ~/tools/
echo "Done"

#Installing ffuf
echo "---------- Installing ffuf ----------"
git clone https://github.com/ffuf/ffuf
cd ffuf
go build
echo "Installation done "
sudo mv ffuf /usr/local/bin
cd ~/tools/
echo "---------- done ----------"

#Installing dirsearch
echo "---------- Installing dirsearch ----------"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "---------- done ----------" 

#Installinf anew
echo "---------- Installing anew ----------"
go get -u github.com/tomnomnom/anew
echo "---------- Done ----------"

echo "---------- Tools for Automation ----------"

#Insatalling SlackCat
#For slack automation
echo "---------- Installing SlackCat ----------"
git clone https://github.com/bcicen/slackcat
cd slackcat
go build 
sudo mv slackcat /usr/local/bin
echo "Don't forget to configure slack"
cd ~/tools
echo "---------- Done ----------"

#Installing gitGraber
echo "---------- Installing gitGraber ----------"
git clone https://github.com/hisxo/gitGraber
cd gitGraber
pip3 install -r requirements.txt
cd ~/tools/
echo "Don't forget to configure gitGraber"
echo "---------- Done ----------"

#Installing sqlmap
#SQLi Automation
echo "---------- installing sqlmap ----------"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "---------- done ----------"

#Installing nuclei	
#For CVE automation
echo "---------- installation nuclei ----------"
git clone https://github.com/projectdiscovery/nuclei
cd /nuclei/tree/master/v2/cmd/nuclei
go build 
sudo mv nuclei /usr/local/bin
cd ~/tools/
nuclei -update-templates
echo "---------- Done ----------"

#Installing Secret finder
#For js automation
echo "---------- Installing Secret_finder ----------"
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
cd secretfinder
python -m pip install -r requirements.txt or pip install -r requirements.txt
cd ~/tools/
echo "---------- Done ----------"

#Installing JSFScan
#.js file automation
echo "---------- Installing JSFScan ----------"
git clone https://github.com/KathanP19/JSFScan.sh
echo "---------- Done ----------"

#Installing byp4xx
#403 bypass automation
echo "---------- Installing byp4xx ----------"
git clone https://github.com/lobuhi/byp4xx.git
cd byp4xx
sudo chmod +x byp4xx.sh
cd ~/tools/
echo "---------- Done ----------"

#Installing subjs
#For js file enumeration
echo "---------- Installing subjs ----------"
git clone https://github.com/lc/subjs
cd subjs
go build 
sudo mv subjs /usr/local/bin
cd ~/tools/
echo "---------- Done ----------"

#Installing LinkFinder
#For .js endpoints finding
echo "---------- Installing LinkFinder ----------"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install
cd ~/tools/
echo "---------- Done ----------"

#Installing webdork
#for information disclosure automation
echo "---------- Installing webdork ----------"
git clone https://github.com/HACKE-RC/webdork
cd webdork
sudo python3 setup.py
cd ~/tools/
echo "---------- Done ----------"

#Installing subzy
#Subdomain takeover automation
echo "---------- Installing subzy ----------"
git clone https://github.com/LukaSikic/subzy
cd subzy
go build
echo "Installation done "
sudo mv subzy /usr/local/bin
cd ~/tools/
echo "---------- done ----------"

#Installing Interlance
# For Automation Scripting
echo "---------- Installing Interlace ----------"
git clone https://github.com/codingo/Interlace#Setup
echo "Installation Done"
cd ~/tools/
echo "---------- Done ----------"

#Installing QuickXSS
#For XSS automation
echo "---------- Installing QuickXSS ----------"
git clone https://github.com/theinfosecguy/QuickXSS
cd QuickXSS
chmod +x QuickXSS.sh
cd ~/tools/
echo "---------- Done ----------"

#Installing lazys3
#For S3 bucket automation
echo "---------- Installing lazys3 ----------"
git clone https://github.com/nahamsec/lazys3
echo "---------- Done ----------"

echo "---------- Installing Other Tools ----------"

#Installing gf
#A wrapper around grep to avoid typing common patterns.
echo "---------- Installing gf and Gf-Patterns ----------"
git clone https://github.com/tomnomnom/gf
cd gf 
go build 
sudo mv gf /usr/local/bin
cd ~/tools/

#Adding gf-patterns
echo "Adding patterns file"
mkdir ~/.gf
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash
cd ~/
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf
rm -rfv ~/Gf-Patterns
cd ~/.gf
wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json
cd ~/tools/
echo "---------- Done ----------"

#Installing qsreplace
#TO change the qurey string or replace querry string 
echo "---------- Installing qsreplace ----------"
git clone https://github.com/tomnomnom/qsreplace
cd qsreplace
go build
sudo mv qsreplace /usr/local/bin
cd ~/tools/
echo "---------- Done ----------"

#Installing SecScraper
echo "---------- Installing SecScraper ----------"
git clone https://github.com/bittentech/SecScraper.git
cd SecScraper
pip3 install -r requirements.txt
cd ~/tools/
echo "---------- Done ----------"



echo "Don't forget to configure AWS cli"
echo "Don't forget to configure gitGraber"
echo "Don't forget to configure slackcat"
echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All Tools are set up in ~/tools"
ls -la ~/tools/
gnome-tweaks

