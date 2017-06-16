#Adiciona a classe Traducoes.controller para a aplicação.
#Herda a classe ApplicationController, ou seja, a classe que eu criei torna-se uma extensão da classe ApplicationController, que o rails considera como padrão

class TraducoesController < ApplicationController
  #Define o método lista e define todas as traducoes encontradas em lista
 def lista
   @traducoes = Traducoes.all
 end
end
