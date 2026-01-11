# Achyranthes
Source code and data for "Recurrent visitation by diverse insects in an inconspicuous flowering plant _Achyranthes bidentata_ (Amaranthaceae)" by Y. Sato & T. Nishida.  

## data
1. **distance_data.csv**  
Original data on flight distance of honeybees and lycaenid butterflies. The header information is as follows:  

- honeybee  
Movement distance of honeybees between _A. bidentata_ spikes (by 10 cm up to >100 cm)  

- butterfly  
Movement distance of lycaenid butterflies between _A. bidentata_ spikes (by 10 cm up to >100 cm)   

- date  
The date of field observations (dd-mm-yyyy)  
  

2. **frequency_data.csv**  
Data on the visitation frequency and intra/inter-individual movements of honeybees and lycaenid butterflies. The header information is as follows:  

- date  
The date of field observations (dd-mm-yyyy)  

- type  
Visitor type: 'honeybee' or 'butterfly'

- out  
No. of flower visits between _A. bidentata_ individuals

- in.  
No. of flower visits within _A. bidentata_ individuals

- total  
Total no. of flower visits  


3. **time_data.csv**  
Data on the visitation time of honeybees and lycaenid butterflies spent on _A. bidentata_ spikes. The header information is as follows:  

- honeybee  
Visitation time of honeybees (in x.xx sec.)

- butterfly  
Visitation time of lycaenid butterflies (in x.xx sec.)

- date  
The date of field observations (dd-mm-yyyy)  
  

4. **two_sites_data.csv**  
Data on the community composition of flower visitors on _A. bidentata_ in Kyoto and Mie. The header information is as follows:  

- site  
Study sites: Kyoto or Mie, Japan  

- Lepidoptera  
No. of visits by Lepidoptera  

- Hymenoptera  
No. of visits by Hymenoptera  

- Diptera  
No. of visits by Diptera  

- Coleoptera  
No. of visits by Coleoptera  

- time  
Observation time: morning (AM) or afternoon (PM)  

- date  
The date of field observations (dd-mm-yyyy)  


## figures
1. fig1_photo.pdf  
Main figure 1.

1. fig1_photo.pptx  
Main figure 1 (in ppt. format)

1. fig2_two_sites.pdf  
Main figure 2

1. fig3_visit_patterns.pdf  
Main figure 3 (combined)  

## manuscript
Markdown source file to reproduce the manuscript. 

1. apa.csl  
Citation Style Language (.csl) in American Psychological Association (APA) Reference Style  

1. manuscript.md  
Markdown main body of the manuscript

1. zotero.bib  
BibTex-style bibliography


## photo
Original photographs for Figure 1.

1. photo1.jpg  
Source photo for Figure 1b: A spike of _A. bidentata_

1. photo2.jpg  
Source photo for Figure 1a: A stand of _A. bidentata_

1. pollen_anther.jpg  
Source photo for Figure 1c: _A. bidentata_ pollen

1. pollen2_butterfly.jpg  
Source photo for Figure 1d: _A. bidentata_ pollen grain on a butterfly

1. pollen_bee.jpg  
Source photo for Figure 1e: _A. bidentata_ pollen grains on a honeybee


## script

R scripts for statistical analyses and data visualization. Input data are stored at ```./data```.  

1. figs.R  
R script for figure presentations  

1. stat.R  
R script for GLM and GLMM analyses


## Achyranthes.Rproj
RStudio project for the line of analyses  


## README.md
This markdown file including file descriptions and data documentation (see above).



