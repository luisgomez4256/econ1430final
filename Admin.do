use "/Users/luisgomez/Downloads/seda_admindist_CA.dta"

* Clean data to only include CA rows
keep if stateabb == "CA"
save "seda_admindist_CA.dta", replace

gen keep_flag = 0

* Clean data to only include San Mateo/Santa Clara County rows
replace keep_flag = 1 if sedaadminname == "Alum Rock Union Elementary"
replace keep_flag = 1 if sedaadminname == "Berryessa Union Elementary"
replace keep_flag = 1 if sedaadminname == "Cambrian"
replace keep_flag = 1 if sedaadminname == "Campbell Union"
replace keep_flag = 1 if sedaadminname == "Campbell Union High"
replace keep_flag = 1 if sedaadminname == "Cupertino Union"
replace keep_flag = 1 if sedaadminname == "East Side Union High"
replace keep_flag = 1 if sedaadminname == "Evergreen Elementary"
replace keep_flag = 1 if sedaadminname == "Franklin-McKinley Elementary"
replace keep_flag = 1 if sedaadminname == "Fremont Union High"
replace keep_flag = 1 if sedaadminname == "Gilroy Unified"
replace keep_flag = 1 if sedaadminname == "Lakeside Joint"
replace keep_flag = 1 if sedaadminname == "Loma Prieta Joint Union Elementary"
replace keep_flag = 1 if sedaadminname == "Los Altos Elementary"
replace keep_flag = 1 if sedaadminname == "Los Gatos Union Elementary"
replace keep_flag = 1 if sedaadminname == "Los Gatos-Saratoga Joint Union High"
replace keep_flag = 1 if sedaadminname == "Luther Burbank"
replace keep_flag = 1 if sedaadminname == "Milpitas Unified"
replace keep_flag = 1 if sedaadminname == "Moreland"
replace keep_flag = 1 if sedaadminname == "Morgan Hill Unified"
replace keep_flag = 1 if sedaadminname == "Mount Pleasant Elementary"
replace keep_flag = 1 if sedaadminname == "Mountain View Whisman"
replace keep_flag = 1 if sedaadminname == "Mountain View-Los Altos Union High"
replace keep_flag = 1 if sedaadminname == "Oak Grove Elementary"
replace keep_flag = 1 if sedaadminname == "Orchard Elementary"
replace keep_flag = 1 if sedaadminname == "Palo Alto Unified"
replace keep_flag = 1 if sedaadminname == "San Jose Unified"
replace keep_flag = 1 if sedaadminname == "Santa Clara Unified"
replace keep_flag = 1 if sedaadminname == "Saratoga Union Elementary"
replace keep_flag = 1 if sedaadminname == "Sunnyvale"
replace keep_flag = 1 if sedaadminname == "Union Elementary"
replace keep_flag = 1 if sedaadminname == "Bayshore Elementary"
replace keep_flag = 1 if sedaadminname == "Belmont-Redwood Shores Elementary"
replace keep_flag = 1 if sedaadminname == "Brisbane Elementary"
replace keep_flag = 1 if sedaadminname == "Burlingame Elementary"
replace keep_flag = 1 if sedaadminname == "Cabrillo Unified"
replace keep_flag = 1 if sedaadminname == "Hillsborough City Elementary"
replace keep_flag = 1 if sedaadminname == "Jefferson Elementary"
replace keep_flag = 1 if sedaadminname == "Jefferson Union High"
replace keep_flag = 1 if sedaadminname == "La Honda-Pescadero Unified"
replace keep_flag = 1 if sedaadminname == "Las Lomitas Elementary"
replace keep_flag = 1 if sedaadminname == "Menlo Park City Elementary"
replace keep_flag = 1 if sedaadminname == "Millbrae Elementary"
replace keep_flag = 1 if sedaadminname == "Pacifica"
replace keep_flag = 1 if sedaadminname == "Portola Valley Elementary"
replace keep_flag = 1 if sedaadminname == "Ravenswood City Elementary"
replace keep_flag = 1 if sedaadminname == "Redwood City Elementary"
replace keep_flag = 1 if sedaadminname == "San Bruno Park Elementary"
replace keep_flag = 1 if sedaadminname == "San Carlos Elementary"
replace keep_flag = 1 if sedaadminname == "San Mateo Union High"
replace keep_flag = 1 if sedaadminname == "San Mateo-Foster City"
replace keep_flag = 1 if sedaadminname == "Sequoia Union High"
replace keep_flag = 1 if sedaadminname == "South San Francisco Unified"
replace keep_flag = 1 if sedaadminname == "Woodside Elementary"

keep if keep_flag == 1
drop keep_flag

* Manually match median home prices with school districts
replace housing_growth = 890794.5864 if sedaadminname == "Alum Rock Union Elementary"
replace housing_growth = 1431954.12 if sedaadminname == "Berryessa Union Elementary"
replace housing_growth = 1530226.279 if sedaadminname == "Cambrian"
replace housing_growth = 1658320.608 if sedaadminname == "Campbell Union"
replace housing_growth = 2511153.457 if sedaadminname == "Cupertino Union"
replace housing_growth = 1319931.75 if sedaadminname == "Evergreen Elementary"
replace housing_growth = 768909.4099 if sedaadminname == "Franklin–McKinley Elementary"
replace housing_growth = 1762923.07 if sedaadminname == "Gilroy Unified"
replace housing_growth = 2784460.333 if sedaadminname == "Lakeside Joint"
replace housing_growth = 2248139.282 if sedaadminname == "Loma Prieta Joint Union Elementary"
replace housing_growth = 3828646.694 if sedaadminname == "Los Altos Elementary"
replace housing_growth = 2058830.762 if sedaadminname == "Los Gatos Union Elementary"
replace housing_growth = 1259122.808 if sedaadminname == "Luther Burbank"
replace housing_growth = 1062287.18 if sedaadminname == "Milpitas Unified"
replace housing_growth = 1418397.599 if sedaadminname == "Moreland"
replace housing_growth = 1214989.533 if sedaadminname == "Morgan Hill Unified"
replace housing_growth = 1212389.533 if sedaadminname == "Mount Pleasant Elementary"
replace housing_growth = 3114031.11 if sedaadminname == "Mountain View Whisman"
replace housing_growth = 1174613.464 if sedaadminname == "Oak Grove Elementary"
replace housing_growth = 1172313.464 if sedaadminname == "Orchard Elementary"
replace housing_growth = 3836433.875 if sedaadminname == "Palo Alto Unified"
replace housing_growth = 1196382.146 if sedaadminname == "San Jose Unified"
replace housing_growth = 1065989.23 if sedaadminname == "Santa Clara Unified"
replace housing_growth = 3112331.11 if sedaadminname == "Saratoga Union Elementary"
replace housing_growth = 2640995.178 if sedaadminname == "Sunnyvale"
replace housing_growth = 1530226.279 if sedaadminname == "Union Elementary"
replace housing_growth = 979806.596 if sedaadminname == "Bayshore Elementary"
replace housing_growth = 2013128.762 if sedaadminname == "Belmont–Redwood Shores Elementary"
replace housing_growth = 937638.128 if sedaadminname == "Brisbane Elementary"
replace housing_growth = 1718742.539 if sedaadminname == "Burlingame Elementary"
replace housing_growth = 1718742 if sedaadminname == "Cabrillo Unified"
replace housing_growth = 4621343.502 if sedaadminname == "Hillsborough City Elementary"
replace housing_growth = 937884.618 if sedaadminname == "Jefferson Elementary"
replace housing_growth = 1240070.815 if sedaadminname == "La Honda–Pescadero Unified"
replace housing_growth = 3114331.11 if sedaadminname == "Las Lomitas Elementary"
replace housing_growth = 3114031.11 if sedaadminname == "Menlo Park City Elementary"
replace housing_growth = 1809214.312 if sedaadminname == "Millbrae Elementary"
replace housing_growth = 1822214.312 if sedaadminname == "Pacifica"
replace housing_growth = 3114022.11 if sedaadminname == "Portola Valley Elementary"
replace housing_growth = 817280.6006 if sedaadminname == "Ravenswood City Elementary"
replace housing_growth = 1525500.519 if sedaadminname == "Redwood City Elementary"
replace housing_growth = 2131030.345 if sedaadminname == "San Bruno Park Elementary"
replace housing_growth = 2231030.345 if sedaadminname == "San Carlos Elementary"
replace housing_growth = 2232230.32 if sedaadminname == "San Mateo–Foster City"
replace housing_growth = 889515.7677 if sedaadminname == "South San Francisco Unified"
replace housing_growth = 3142945.372 if sedaadminname == "Woodside Elementary"

xtile growth_group = housing_growth, n(2)
label values growth_group growthgrp
collapse (mean) cs_mn_all (mean) cs_mn_se_all, by(growth_group year)
gen ci_upper = cs_mn_all + 1.96 * cs_mn_se_all
gen ci_lower = cs_mn_all - 1.96 * cs_mn_se_all

twoway (rarea ci_upper ci_lower year if growth_group == 1, color(navy%15)) ///
(line cs_mn_all year if growth_group == 1, lcolor(navy) lwidth(medium)) ///
(rarea ci_upper ci_lower year if growth_group == 2, color(cranberry%15)) ///
(line cs_mn_all year if growth_group == 2, lcolor(cranberry) lwidth(medium)), ///
legend(order(2 "Low Housing Growth" 4 "High Housing Growth") ring(0) pos(5) ///
region(lstyle(none))) title("Average Student Achievement by Housing Growth", ///
size(medsmall)) subtitle("With 95% Confidence Bands", size(small)) ///
xtitle("Year", size(small)) ytitle("Scores Compared to National Average", ///
size(small)) ylab(, angle(horizontal)) graphregion(color(white)) ///
plotregion(style(none)) note("Sources: SEDA + Zillow", size(tiny))

reg cs_mn_all year if growth_group == 1, robust
reg cs_mn_all year if growth_group == 2, robust

collect clear

reg cs_mn_all year if growth_group == 1, robust
collect store LowGrowth

reg cs_mn_all year if growth_group == 2, robust
collect store HighGrowth

collect layout (colname[year _cons]#result[_r_b _r_se _r_t _r_p _ci]) ///
               (cmdset[LowGrowth HighGrowth]) ///
               result[N r2], name(regtable)

* Relabel columns
collect label levels colname ///
    year "Year (Slope)" ///
    _cons "Intercept", modify

collect label levels result ///
    _r_b "Coef." ///
    _r_se "Std. Err." ///
    _r_t "t" ///
    _r_p "P>|t|" ///
    _ci "[95% Conf. Interval]" ///
    N "N" ///
    r2 "R-squared", modify

* Optional: relabel cmdsets
collect label levels cmdset ///
    LowGrowth "Low Housing Growth" ///
    HighGrowth "High Housing Growth", modify

* Style the output
collect stars _r_p 0.05 "*" 0.01 "**" 0.001 "***", attach(_r_b)
collect style cell result[_r_se _r_t _r_p], sformat("(%s)")
collect style cell, nformat(%9.4f)
collect style header result[_r_b _r_se _r_t _r_p _ci], level(hide)
collect style tex, nobegintable centering

collect export "growth_trend_regression_table.tex", replace tableonly
