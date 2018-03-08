cd "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080"
sysdescribe census.dta
sysuse census.dta
br
br
br
replace pop = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 in 1
replace pop = 2000000 in 1
br
sysuse census.dta
br
clr
sysuse census.dta
clear
sysuse census.dta
br
replace region = . in 13
replace region = 3 in 13
replace region = 3 in 14
replace region = 3 in 15
replace region = . in 16
replace region = 3 in 16
describe
tabulate pop
tabulate
summarize
sum
tabulate region
tabulate region pop
drop popurban
save "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.dta"
xmlsave "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xml", doctype(excel)
xmluse "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xml"
clear
xmluse "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xml"
xmluse "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xml", doctype(excel)
xmluse "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xml", doctype(excel) firstrow
br
export excel using "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\census.xls"
clear
sysuse pop2000.dta
describe
summarize
drop total white black indian asian island malewhite maleblack maleindian maleasian maleisland femwhite femblack femindian femasian femisland 
tabulate agestr
tabulate agestr
tabulate agestr
br
tabulate agegrp
xmlsave "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\pop-excel.xml", doctype(excel)
save "C:\Users\dewan\Documents\Personal\pengantar_ekonometrik_2018_ngulang\stata_tute_PradityaBagusDewantara_120210140080\output\pop.dta"
