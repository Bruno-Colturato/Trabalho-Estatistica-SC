pergunta4 <- readXL("C:/Users/che_f/Documents/com_comorbidade.xlsx", rownames=FALSE, 
  header=TRUE, na="", sheet="Planilha1", stringsAsFactors=TRUE)
local({
  .Table <- with(pergunta4, table(internacao))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
local({
  .Table <- with(pergunta4, table(obito))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
pergunta4 <- readXL("C:/Users/che_f/Documents/sem_comorbidades.xlsx", rownames=FALSE, 
  header=TRUE, na="", sheet="Planilha1", stringsAsFactors=TRUE)
local({
  .Table <- with(pergunta4, table(internacao))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
local({
  .Table <- with(pergunta4, table(obito))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
