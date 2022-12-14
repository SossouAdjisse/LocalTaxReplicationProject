********************************************************************************
* Program: 0_Master.do
* Author: Gabriel Tourek
* Created: 6 Aug 2021
* Modified: 		
* Purpose: Replication of "Local Elites as State Capacity: How City Chiefs Use 
*          Local Information to Increase Tax Compliance in the D.R. Congo" by
*		   Balan et al. (2021).
********************************************************************************

	clear all
	set more off
	
	
	set timeout1 32000
	set timeout2 32000
	set maxvar 30000

	
* 1. Set up your user specific root directory to Replication Materials folder

		* gl stem "Your Directory/Replication Materials"
		 gl stem "/Users/sossousimpliceadjisse/Documents/myfiles/PaulMoussaReplicationProject/147561-V1/Replication Materials"
		
	
* 3. Route file paths

		global repldir "${stem}"
		
		// Dofiles
		global repldodir "${stem}/Dofiles"
		
		// Output
		global reploutdir "${stem}/Output"

* 4. Run replication files

	do "$repldodir/1_Package_Setup.do"
	do "$repldodir/2_Data_Construction.do"
	do "$repldodir/3_Main_Tables_Figures.do"
	do "$repldodir/4_Appendix_Tables_Figures.do"
	

	
	
cap log close main
cap log off main
	
