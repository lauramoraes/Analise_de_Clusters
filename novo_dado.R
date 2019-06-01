args = commandArgs(trailingOnly=TRUE)

load('attributes.Rdata')
load('data_test.Rdata')
load('model.Rdata')
load('names.Rdata')

dados <- read.csv(args, header=FALSE)
df_dados <- as.data.frame(dados)
colnames(df_dados) <- names
test_scaled <- scale(df_dados, attr$'scaled:center', attr$'scaled:scale')
resposta <- predict(df.tree, test_scaled)
print(resposta)
