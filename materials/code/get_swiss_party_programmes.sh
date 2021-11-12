# clean up
rm -r *programmes


# get all SP party programmes
wget --recursive --accept pdf -nH --cut-dirs=5 --ignore-case -w 1 --directory-prefix=sp_programmes https://www.sp-ps.ch/de/partei/wir-sind-die-sp/unser-programm
rm sp_programmes/robots.txt.tmp
rm sp_programmes/*kurz*


# get current SVP party programmes
mkdir svp_programmes
wget -O svp_programmes/svp_programme_2019.pdf https://www.svp.ch/wp-content/uploads/Parteiprogramm_DE_19_23_190402.pdf 
wget -O svp_programmes/svp_programme_2015.pdf https://www.svp.ch/wp-content/uploads/Parteiprogramm_2015-d.pdf
wget -O svp_programmes/svp_programme_2011.pdf https://www.svp.ch/wp-content/uploads/B10328FF-16F7-4051-9B7B83ACD0219852.pdf 


# get current Green party programmes
mkdir gruene_programmes
wget -O gruene_programmes/gruene_programme_2019.pdf https://gruene.ch/wp-content/uploads/2019/05/190112_wahlplattform_d.pdf


# extract plain text from pdf
find */*.pdf -exec pdftotext -eol unix -nopgbrk {} \;

       
