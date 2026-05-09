!WORKSPACE !RENAME !NOG !OUTFOLDER

Title: dyadic_genetics
RF_log         
RF             
giver_id       !I !SORT
receiver_id    !I !SORT
Sex            !A
Rep         
wt_giver  
Finisher_Pen   !A
wt_receiver
nursery        !I
litter         !I
rf0            
giver_id_pe    !I
receiver_id_pe !I
wt_difference

G_sub_giver_full.grm !NSD
reciprocal_fight_data2.txt  !MAXIT 50 !SKIP 1 !DDF !FCON
RF_log ~ mu wt_difference Sex nursery litter !r Finisher_Pen giv(giver_id,1) and(giv(receiver_id,1))  giver_id and(receiver_id)

VPREDICT !define  #to calc repeatability
F genvar 2*2
F repvar 2*2+3*2
F phenvar 1+2*2+3*2+4 # pheno var
H herit genvar phenvar
H repeat repvar phenvar
