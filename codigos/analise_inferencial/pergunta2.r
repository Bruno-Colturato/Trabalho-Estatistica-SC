load("C:/Users/Murilo/Google Drive/Facul/5º Semestre/Estatística I/Trabalho/pergunta2.xlsx")

Dataset <- 
  readXL("C:/Users/Murilo/Google Drive/Facul/5º Semestre/Estatística I/Trabalho/pergunta2.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="Dados", stringsAsFactors=TRUE)
  
Dataset$Faixa <- with(Dataset, binVariable(idade, bins=12, method='intervals', labels=c('A','B','C','D',
  'E','F','G','H','I','J','K','L')))
library(abind, pos=16)

local({
  .Table <- xtabs(~Faixa+internacao, data=Dataset)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})

local({
  .Table <- xtabs(~Faixa+obito, data=Dataset)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})
