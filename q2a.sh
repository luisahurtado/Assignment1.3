#!/bin/bash
# Assignment 1 task 3  question 2.a.
# Execute the SQL query using the Member table
# First, you should have the Member table in the compbiol database 
# The query is looking for the members that have empty the Coach attribute.
mysql -u awkologist -p compbiol -e '\
select m.LastName, m.FirstName from Member m where m.Coach IS NULL; \'
