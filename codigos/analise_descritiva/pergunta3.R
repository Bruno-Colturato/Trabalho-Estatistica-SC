
Gestantes <- 
  readXL("C:/Users/eduar/OneDrive/�rea de Trabalho/USP/5� semestre/Estatistica/Trabalho/pergunta3.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Dados Apenas Gestantes", 
  stringsAsFactors=TRUE)
summary(Gestantes)
NaoGestantes <- 
  readXL("C:/Users/eduar/OneDrive/�rea de Trabalho/USP/5� semestre/Estatistica/Trabalho/pergunta3.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Dados N�o Gestantes", stringsAsFactors=TRUE)
summary(NaoGestantes)

