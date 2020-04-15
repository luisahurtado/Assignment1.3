#!/bin/bash
# Assignment 1 task 3  question 2.b.
# Execute the SQL query using Member table
# First, you should have the Member table in the compbiol database 
# The query looks for the members in which the joining year quals to 2010
mysql -u awkologist -p compbiol -e '\
select LastName, FirstName from Member where Year(JoinDate) = 2010; \'
