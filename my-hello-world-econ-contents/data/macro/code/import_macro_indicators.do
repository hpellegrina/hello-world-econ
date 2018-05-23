clear all
* Write down the directory below
cd "/home/andres/Dropbox/my-hello-world-econ/data/macro/code"

* IMPORT DATA FROM .CSV TO .DTA
import delimited using ".././input/macro_indicators.csv", clear delimiter(";")
save ".././output/macro_indicators.dta", replace
