# subnetcidroverlap
A small script which finds overlapping IP-Subnets

This script finds the needle in the haystack. 
If you have a list of Subnets in the format:
SUBNET/CIDR
e.g.: 
10.201.40.0/24
10.201.40.0/23

You can use this script to find overlapping Subnets.

Usage:
cat mysubnetlist.txt | ./subnetcalk.pl

The format of mysubnetlist.txt:
10.201.40.0/24
10.201.40.0/23

Installation:
Install all required Modules using CPAN:
sudo perl -MCPAN -e shell
install enum
install Time::HiRes
install Data::Dump
