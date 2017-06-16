class TraducoesController < ApplicationController
 def lista
   @traducoes = Traducoes.all
 end
end

#Adiciona a classe Traducoes.controller para a aplicação, evitando erro de "Uninitialized Constant".
