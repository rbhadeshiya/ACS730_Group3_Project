#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo aws s3 cp s3://dev-group3-project/istockphoto-183384405-170667a.jpg /var/www/html/
sudo aws s3 cp s3://dev-group3-project/pexels-pixabay-45901.jpg /var/www/html/
sudo aws s3 cp s3://dev-group3-project/pexels-vishal-nagre-3739516.jpg /var/www/html/
sudo aws s3 cp s3://dev-group3-project/Yellow-Trumpet-Daffodil.jpg /var/www/html/




echo "
    <h1 align="center">
    
    Our private IP is $myip</h1>
    
    <h1>
    
    <table border="5" bordercolor="grey" align="center">
    <tr>
        <th colspan="3">Group3</th> 
       
    </tr>
    <tr>
     <th colspan="3">Group members:Rushi, Meet, Nikhil</th> 
     </tr>
    </h1>
    <tr>
        <th>image1</th>
        <th>image2</th>

    </tr>
    <tr>
        <td><img src="Yellow-Trumpet-Daffodil.jpg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="pexels-pixabay-45901.jpg" alt="" border=3 height=200 width=300></img></th>
        
    </tr>
    <tr>
        <td>><img src="istockphoto-183384405-170667a.jpg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="pexels-vishal-nagre-3739516.jpg" alt="" border=3 height=200 width=300></img></th>
        
    </tr>
</table>">  /var/www/html/index.html

sudo systemctl start httpd
sudo systemctl enable httpd