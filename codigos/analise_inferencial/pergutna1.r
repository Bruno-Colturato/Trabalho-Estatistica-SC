pergunta1 <- readXL("C:/Users/brcol/Google Drive/Arquivos 2021/Estatística/Trabalho/pergunta1.xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="dados", stringsAsFactors=TRUE)
local({
  .Table <- xtabs(~sexo+internacao, data=pergunta1)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})
local({
  .Table <- xtabs(~sexo+obito, data=pergunta1)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})