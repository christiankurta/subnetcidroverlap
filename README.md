# subnetcidroverlap
A small script which finds overlapping IP-Subnets

This script finds the needle in the haystack. <br>
If you have a list of Subnets in the format:<br>
SUBNET/CIDR<br>
e.g.: <br>
<br>
10.201.40.0/24<br>
10.201.40.0/23<br>
<br>
You can use this script to find overlapping Subnets.<br>
<br>
<b>Usage</b><br>
cat mysubnets.txt | ./subnetcidroverlap.pl<br>
<br>
The format of mysubnetlist.txt:<br>
10.201.40.0/24<br>
10.201.40.0/23<br>
<br>
<b>Installation</b>:<br>
Install all required Modules using CPAN:<br>
sudo perl -MCPAN -e shell<br>
install enum<br>
install Time::HiRes<br>
install Data::Dump<br>
