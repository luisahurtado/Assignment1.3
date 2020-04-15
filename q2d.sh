#!/bin/bash
# Assignment 1 task 3  question 2.d.
# Execute the SQL query using Member and Entry tables
# First, you should have the Member and Entry tables in the compbiol database
# The query uses the division operator to obtain the members who enter every year that the members competed
mysql -u awkologist -p compbiol -e '\
select m.MemberId, m.LastName, m.FirstName from Member m where not exists (select distinct e.Year from Entry e where not exists (select * from Entry e2 where e2.MemberID=m.MemberId and e.Year=e2.Year)); \'
