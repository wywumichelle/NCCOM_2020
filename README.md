# NCCOM_2020

This two matlab files are for visualization.
Figure 3 for Wu et al. (2020) 
DOI:10.1038/s41467-020-17581-y

Some data pre-prosseing (i.e. standarlized regression) is needed beforehead to generate the input netcdf file.

Brief intro of method: 
Multiple linear regression
Y = a1X1+a2X2+a3X3+b 
In this case we are using,
Y=  Trend of groundwater recharge
X1= Trend of Rainfall
X2= Trend of snowmelt
X3= Trend of ET
Number of sample= 30 (ensembles) 

The multiple linear regression can be done in many languages.
e.g., "reg_multlin_stats" in NCAR Command Language (NCL)
