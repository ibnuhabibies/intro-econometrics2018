*Praktikum 2
*Author: Praditya Bagus Dewantara
*GIT Repository: https://github.com/pradityabagus/intro-econometrics2018

*Clear
clear
*Setting Global Variable
global DATA "D:\stata_tute_pradityabgs_120210140080\data"
global OUTPUT "D:\stata_tute_pradityabgs_120210140080\output\"

*Using Affairs data from local repository
use $DATA\affairs.dta

*Explain the general info abour variables
des

sum

tabulate yrsmarr naffairs

tabstat naffairs ratemarr, by(male) stat(mean)



//DATA EDITING COMMAND//
*change varname
rename yrsmarr lamamenikah


*replace relig value in id 93 to very religious (5)
replace relig = 5 in 22
*why 22? because id 93 is in row 22

*change years marriage (year) to how many months
replace lamamenikah=(lamamenikah*12)

*Recode relig value (1-2 => 0 ; 3-5 => 1)
recode relig (1/2=0) (3/5=1)

*Dropping "occup" variable
drop occup

*Keep only some variable: {id, male, age, kids, relig, affair}
keep id male age kids relig affair

*saving the processed data in Stata format
save $OUTPUT\affairsedited , replace

*saving the processed data in Excel
export excel "affairs",firstrow(variables)

*trying to make a new directory using STATA command
mkdir $DATA\newdirexample





