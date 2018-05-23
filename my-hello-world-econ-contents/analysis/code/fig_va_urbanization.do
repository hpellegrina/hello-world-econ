clear all
* Write down the directory below
cd "your/path/to/my-hello-world/analysis/code"

program main
	clean_data
	make_figure
end

program clean_data
	use "../.././data/finaldata/output/data_for_analysis.dta", clear
	gen va_rural_worker = va_ag/(pop_total-pop_urban)
	gen urban_share = pop_urban/pop_total
end

program make_figure
	twoway (scatter urban_share va_rural_worker, mlabel(iso))	///
		, yscale(log) xscale(log) title("Hello World! I'm an Economist!")
	graph export ".././output/fig-hello-world.png", as(png) replace
end

main
