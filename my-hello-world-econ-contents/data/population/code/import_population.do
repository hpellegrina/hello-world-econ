clear all
* Write down the directory below
cd "your/path/to/my-hello-world/data/population/code"

* IMPORT DATA FROM .CSV TO .DTA
import delimited using ".././input/population.csv", clear delimiter(";")
save ".././output/population.dta", replace
