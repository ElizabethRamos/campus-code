class TraducoesController < ApplicationController
 def lista
   @traducoes = Traducoes.all
 end
end
