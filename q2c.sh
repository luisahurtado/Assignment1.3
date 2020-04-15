#!/bin/bash
# Assignment 1 task 3  question 2.c.
# Execute the SQL query using Member and Entry table
# First, you should have the Member and Entry table in the compbiol database 
# The query makes a join between the  Member and Entry tables and apply the 
# difference operator to eliminate the ones that competed in 2014 
mysql -u awkologist -p compboil -e '\
select distinct m.MemberId, m.LastName, m.FirstName from (Member m inner join Entry e on m.MemberId=e.MemberID) where not exists (select * From Entry e where m.MemberId=e.MemberID and e.Year=2014); \'
