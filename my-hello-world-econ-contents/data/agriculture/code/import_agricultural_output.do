clear all
* Write down the directory below
cd "your/path/to/my-hello-world/data/agriculture/code"

* IMPORT DATA FROM .CSV TO .DTA
import delimited using ".././input/agricultural_output.csv", clear delimiter(";")
save ".././output/agricultural_output.dta", replace
