#GETTING AND CLEANING DATA

###Steps to execute Course Project
1. Download the datasets to local machine to a specific folder.
2. Change your working directory to the folder where the data was downloaded.
3. Put the script **run_analysis.R** in the same location as the datasets (root directory)
4. Run the script
      + Usage: *source ("run_analysis.R")*
      + Arguments: none
      + Value: a txt file generated under the same location (*tidyData.txt*)
      
      
#####Note:
The script has two library dependencies *data.table* and *reshape2*.
If those libraries are not installed use following commads before execute script:

1. install.packages ("data.table")
2. library (data.table)
3. install.packages("reshape2")
4. library(reshape2)