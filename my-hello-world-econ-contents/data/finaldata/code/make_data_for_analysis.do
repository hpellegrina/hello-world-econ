clear all
* Write down the directory below
cd "your/path/to/my-hello-world/data/finaldata/code"

* MERGE DATA AND SAVE
use "../.././population/output/population.dta", clear
merge 1:1 year iso using "../.././agriculture/output/agricultural_output.dta", nogen assert(3)
save ".././output/data_for_analysis.dta", replace
