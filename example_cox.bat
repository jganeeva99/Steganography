gen_cox_sig -o cox.sig
wm_cox_e -s cox.sig -o cox_lena.pgm lena.pgm
wm_cox_d -s cox.sig -i lena.pgm -o cox.wm  cox_lena.pgm
cmp_cox_sig -C -s cox.sig cox.wm