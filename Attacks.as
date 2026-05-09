!WORKSPACE !RENAME !NOG !OUTFOLDER

Title: dyadic_genetics
y
sex           !I
nursery       !I
litter        !I
weight_giver
weight_receiver
social_group  !A
giver_id      !I !SORT 
receiver_id   !I !SORT
giver_id_pe    !I !SORT
receiver_id_pe !I !SORT
y_log

    
G_reord.grm !NSD
aggression_data_log.txt !MAXIT 50 !SKIP 1 !DDF !FCON
y_log ~ mu weight_giver weight_receiver sex nursery litter !r social_group !{ giver_id receiver_id !}  !{ giver_id_pe receiver_id_pe !}
0 0 2

giver_id 2
2 0 US !GP
0
0 0
giver_id 0 GIV

giver_id_pe 2
2 0 US !GP
0
0 0
giver_id_pe 0 ID

VPREDICT !define  #to calc repeatability
F giver_genvar 3
F giver_repvar 3+6
F receiver_genvar 5
F receiver_repvar 5+8
F phenvar 1+2+3+5+6+8 # pheno var
H giver_herit giver_genvar phenvar
H giver_repeat giver_repvar phenvar
H receiver_herit receiver_genvar phenvar
H receiver_repeat receiver_repvar phenvar
R genetic_cor 3:5
R pe_cor 6:8
