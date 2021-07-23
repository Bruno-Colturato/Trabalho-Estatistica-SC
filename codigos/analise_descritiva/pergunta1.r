pergunta1 <- readXL("C:/Users/brcol/Google Drive/Arquivos 2021/Estatística/Trabalho/pergunta1.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="dados", stringsAsFactors=TRUE)
summary(pergunta1)
library(abind, pos=16)
local({
  .Table <- xtabs(~internacao+obito+sexo, data=pergunta1)
  cat("\nFrequency table:\n")
  print(.Table)
  cat("\nRow percentages:\n")
  print(rowPercents(.Table)) 
})
