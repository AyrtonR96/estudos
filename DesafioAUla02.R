#----------Aula 02 - Desafio ------------
#Limpar Global Enviroment
rm(list = ls())
# Criando o vetor coeficiente de satisfação
coefSats<-c(5,7,8,8,8,7,5,9,10,9,10,10,8,7,7,5,4,8,8,7,8,6,8,10,7,10,10,8,10,9)
#criando o vetor coeficiente de recomendação
coefRec<-c(5,8,9,8,9,7,5,10,10,10,10,10,8,8,8,5,0,8,8,8,9,5,9,10,9,10,10,8,10,10)
#Criando um quadro com os dados
dados<-data.frame(coefSats,coefRec)

#----------------COEFICIENTE DE SATISFAÇÃO--------------
#Criando tabela de frequência absoluta
nSatisfacao<-table(dados$coefSats) 
nSatisfacao#mostrando a tabela no console
#Criando tabela de frequência relativa
fSatisfacao<-100*prop.table(nSatisfacao)
fSatisfacao<-round(fSatisfacao,2) #Arredondando 2 casas decimais
fSatisfacao #Mostrando a tabela no console

#Incluindo valor total ao final da tabela
nSatisfacao<-c(nSatisfacao,sum(nSatisfacao))
fSatisfacao<-c(fSatisfacao,sum(fSatisfacao))
#Incluindo a palavra TOTAL nos nomes de posição
names(nSatisfacao)[length(nSatisfacao)]<-"TOTAL"
#Criando a tabela de frequências (absoluta e relativa)
tabela1<-cbind(nSatisfacao,fSatisfacao)
tabela1 #Mostrando tabela no console

#---------------------Coeficiente de Recomendação----------------