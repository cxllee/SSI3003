# Data Analysis in Social Science 3 (2021)
# AB
# 17 Jan 2021

setwd()

library(tidyverse)

# Reading data into R.

# Base R

W10 <- read.table("/Users/chelsealee/Desktop/SSI3003/UndSoc/tab/ukhls_w10/j_indresp.tab")

# How long did it take?

system.time(W10 <- read.table("/Users/chelsealee/Desktop/SSI3003/UndSoc/tab/ukhls_w10/j_indresp.tab"))

# with readr

# use read_tsv() for tab separated files

system.time(W10 <- read_tsv("/Users/chelsealee/Desktop/SSI3003/UndSoc/tab/ukhls_w10/j_indresp.tab"))

# with vroom
library(vroom)

system.time(W10 <- vroom("/Users/chelsealee/Desktop/SSI3003/UndSoc/tab/ukhls_w10/j_indresp.tab"))

# with vroom you can select the columns you want to read.

system.time(W10 <- vroom("/Users/chelsealee/Desktop/SSI3003/UndSoc/tab/ukhls_w10/j_indresp.tab",
                         col_select = "pidp"))

# Another package that you may consider using is data.table

############################################

# with comma-separated files use read.csv or read_csv

# check options for more complex cases

? read_csv

############################################

# Other types of data format (Excel, SPSS, Stata, SAS)

# readxl and haven packages

# Excel
library(readxl)

test <- read_excel("data/test.xlsx")

# SPSS

library(haven)
survey <- read_sav("data/survey.sav")

# Stata

cars <- read_dta("data/carsdata.dta")

############################################

# rvest is a package for web scraping

############################################

# You can also use these packages to write files in the required format.

write_csv(cars, "data/carsdata.csv")
write_excel_csv(cars, "data/carsdataExcel.csv")
write_sav(cars, "data/carsdata.sav")
