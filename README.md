# Industrial Assessment Center (IAC) Data: Cleaning, Integrating, & Exploration

### Description
The purpose of this repository is to house the culmination of the UCSB [EDS 213](https://bren.ucsb.edu/courses/eds-213) Discussion project. For this project, I wanted to gain a better understanding of IAC data. The Industrial Assessments Center conducts audits to small and medium sized US industrial plants - and shares a file of it's assessments and recommendations. I wanted to explore the relationship between these two outputs as well as the [sic/naics](https://www.naics.com/search/) codes.

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

- References or acknowledgements. In an appropriate, consistent format, including links. Provide a reference to the course and any other sources that supported the development of the repository. Add references for data sets too.
