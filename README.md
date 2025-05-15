# Industrial Assessment Center (IAC) Data: Cleaning, Integrating, & Exploration

### Description
The purpose of this repository is to house the culmination of the UCSB [EDS 213](https://bren.ucsb.edu/courses/eds-213) Discussion project. For this project, I wanted to gain a better understanding of IAC data. The Industrial Assessments Center conducts audits to small and medium sized US industrial plants - and shares a file of it's [assessments and recommendations](https://iac.university). I wanted to explore the relationship between these two outputs as well as the [sic/naics](https://www.naics.com/search/) codes.

### Repository Structure
```
data/
  └── .DS_Store
  ├── IAC_Assess.csv
  ├── IAC_Recc.csv
  ├── NAICS_Codes.csv
  └── NAICS_SIC_Xwalk.csv
.DS_Store
README.md
databasediscussion.sql
datavis.ipynb
dependencies.txt
iac.db
iac.db.wal
iac_query.sql
initial_clean.ipynb
.gitignore/
  ├── assess.csv
  ├── crosswalk.csv
  ├── naics.csv
  └── rec.csv
```
### Data Access
All data for this project is hosted on this repository, in the data file - as some of the data used for this project are changed from the public source. 

The unchanged public data can be accessed through the following websites:
- [NAICS/SIC Crosswalk](https://www.naics.com/search/)
- [NAICS Codes](https://www.naics.com/search/)
- [IAC Assessments and Recommendations](https://iac.university/download)

### References
I would like to acknowledge Professors Julien Brun and Greg Janée, as well as Annie Adams for instructing the course [EDS 213: Databases and Database Management](https://ucsb-library-research-data-services.github.io/bren-eds213/). (This course is part of the larger [MEDS](https://bren.ucsb.edu/masters-programs/master-environmental-data-science/academics-meds/meds-courses) cirriculum. 

*Data Source Citations*

"IAC Database." U.S. Department of Energy Industrial Assessment Centers, 15 May 2025, iac.university/download.
NAICS Association. "North American Industry Classification System Manual." 2022 NAICS Codes, NAICS Association, 2022, www.naics.com/search/.
NAICS Association. "NAICS to SIC Crosswalk in Excel Format with Short Descriptions." 2022 NAICS and SIC Codes, NAICS Association, 2022, www.naics.com/naics-to-sic-crosswalk-2/.
