
# Tipos de dados ----------------------------------------------------------

# NUmeric

# Decimal 
1.1

# Integer
1L

# Character
"Fernando"

# Logical
TRUE
FALSE
T # Versao abreviada
F # Versao arbreviada

# Date
as.Date("2024-02-05")

# Factor 
factor(x = c(3,2,7,7,1,2))


# Vetores atomicos --------------------------------------------------------

# numeric
1:10
3:7 
-2:0

# Character
c("Fernando", "Silva", "Bla bla bla")
vetor_textual <- c("Ferando", "Silva", "Bla Bla Bla")
vetor_textual


# Lista --------------------------------------------------------------------
# Criar uma lista
list(
  1:10,
  vetor_textual,
  c(TRUE, FALSE),
  list(as.Date("2022-01-23"))
)

# data.frames
# Forma correta (elementos do mesmo tamanho)
data.frame(coluna_1 = 1:9, coluna_2 = rep(c("a", "b", "c"), 3))

# Forma incorreta (elementos com tamnho incompativel)
data.frame(coluna_1 = 1:10, coluna_2 = rep(c("a", "b", "c"), 3))

# Reciclagem
data.frame(A = 1:3, B = 5)
data.frame(A = 1:3, B = 1:2) # erro
data.frame(A = 1:4, B = 1:2) # funciona

# tibble
library(tibble)
tibble(coluna_1 = 1:9, coluna_2 = rep(c("a","b","c"), 3))

# reciclagem
tibble(A = 1:3, B = 5)
tibble(A = 1:3, B = 1:2) # erro
tibble(A = 1:4, B = 1:2) # erro


# Acessando elementos (subsetting) ----------------------------------------

# Objetos de exemplo
vetor_textual
lista <- list(
  20:30,
  vetor_textual,
  TRUE,
  "vetor_logico" = c(TRUE, FALSE),
  list(as.Date("2022-01-23"), 1:3)
)
tabela <- tibble(A = 1:3, B = 5, C = TRUE)

# Como acessar elementos de vetores / listas ------------------------------
# Como acessar emelemtnos de vetores
vetor_textual[1]
vetor_textual[3]

# Como acessar elementos de listas
lista[1] # retorna lista
lista[[1]] # retorna vetor dentro da lista
lista[2]
lista[[2]]
lista[3]

lista[[5]]
lista[[5]][1]

lista$vetor_logico
# Como acessar elementos de tabelas (data.frames / tibble)
tabela$B
tabela[["B"]]
tabela["B"]
tabela[c("A","A")]
tabela[2, ]
tabela[2,2]
tabela[3, c("A","C")]



# Pipe --------------------------------------------------------------------
library(magrittr)
log(sqrt(sum(1:10)))
1:10 |>
  sum() |>
  sqrt() |>
  log()

# usando marcador .
cars |> 
  head(n = 30) |>
  lm(speed ~ dist, data = _)
