dm<-read.csv('https://github.com/ozt-ca/tjo.hatenablog.samples/raw/master/r_samples/public_lib/jp/exp_uci_datasets/tennis/men.txt',header=T,sep='\t')
dw<-read.csv('https://github.com/ozt-ca/tjo.hatenablog.samples/raw/master/r_samples/public_lib/jp/exp_uci_datasets/tennis/women.txt',header=T,sep='\t')
dm<-dm[,-c(1,2,16,17,18,19,20,21,34,35,36,37,38,39)]
dw<-dw[,-c(1,2,16,17,18,19,20,21,34,35,36,37,38,39)]

# L1正則化
library(glmnet)
dm.cv.glmnet<-cv.glmnet(as.matrix(dm[,-1]),as.matrix(dm[,1]),family="binomial",alpha=1)
# alpha=1でL1正則化、alpha=0でL2正則化、その間ならelastic net
# cv.glmnet関数は交差検証によってパラメータの最適値の探索も同時にやってくれる
plot(dm.cv.glmnet)
coef(dm.cv.glmnet,s=dm.cv.glmnet$lambda.min) # s引数に探索したパラメータの最適値を入れる

