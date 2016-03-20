dm<-read.csv('https://github.com/ozt-ca/tjo.hatenablog.samples/raw/master/r_samples/public_lib/jp/exp_uci_datasets/tennis/men.txt',header=T,sep='\t')
dw<-read.csv('https://github.com/ozt-ca/tjo.hatenablog.samples/raw/master/r_samples/public_lib/jp/exp_uci_datasets/tennis/women.txt',header=T,sep='\t')
dm<-dm[,-c(1,2,16,17,18,19,20,21,34,35,36,37,38,39)]
dw<-dw[,-c(1,2,16,17,18,19,20,21,34,35,36,37,38,39)]


