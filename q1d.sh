#!/bin/bash
# Assignment 1 task 3  question 1.d.
# Execute the SQL query using the annotation table
# First, you should have the annotation table in the compbiol database 
# The quey uses a self join to find the duplicated metabolism 
mysql -u awkologist -p compboil -e '\
select distinct a1.Metabolism from annotation a1 inner join annotation a2 on a1.Metabolism=a2.Metabolism where a1.Gene<>a2.Gene;\'
