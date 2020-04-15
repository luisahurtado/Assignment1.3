#!/bin/bash
# Assignment 1 task 3  question 1.c.
# Execute the Linux commands using the annotation and expression tables
# The files must not have header. The commands make a join between annotation and 
# expression tables showing the columns gene, function and exp_value
sort -t$'\t' -k 1 annotation.tab > annotationSort.tab
sort -t$'\t' -k 1 expression.tab > expressionSort.tab
join -t$'\t' -1 1 annotationSort.tab expressionSort.tab > joinTable.tab
awk -F"\t" '{print $1,$2,$4}' joinTable.tab
