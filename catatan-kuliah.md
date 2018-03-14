Catatan Kuliah
===============

Praktikum 2
-----------
Command stata
mkdir
cd

macro directory 
command: global dir_name dir_location

global DATA "(directory)"

use 

bcuse -> data 
boston college's data (yang ada di buku wooldridge)
ssc install bcuse before

webuse
sysuse

rename varname newvarname

recode 
(to change value in bulk using conditional)


sum

tab
tabstat varname varname(n), by(firstcolumnvarname) stat(mean/or other)
