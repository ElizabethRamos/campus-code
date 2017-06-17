#Adiciona a classe Traducoes.controller para a aplicação.
#Herda a classe ApplicationController, ou seja, a classe que eu criei torna-se uma extensão da classe ApplicationController, que o rails considera como padrão

class TranslationsController < ApplicationController
  #Define o método lista e define todas as traducoes encontradas em lista

  def list
   #translation1 = Translation.new(portuguese: "mesa", english: "table")
   #translation2 = Translation.new(portuguese: "passarinho", english: "bird")
     @translations = Translation.all
  end

  def new
  end
 end
