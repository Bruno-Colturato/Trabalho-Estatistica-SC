
Gestantes <- 
  readXL("C:/Users/eduar/OneDrive/Área de Trabalho/USP/5° semestre/Estatistica/Trabalho/pergunta3.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Dados Apenas Gestantes", 
  stringsAsFactors=TRUE)
summary(Gestantes)
NaoGestantes <- 
  readXL("C:/Users/eduar/OneDrive/Área de Trabalho/USP/5° semestre/Estatistica/Trabalho/pergunta3.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Dados Não Gestantes", stringsAsFactors=TRUE)
summary(NaoGestantes)

