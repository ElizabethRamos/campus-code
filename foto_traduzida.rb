require_relative 'traducao'

class FotoTraduzida < Traducao
  attr_accessor :link_foto

  def initialize(link_foto, texto_portugues, texto_ingles)
    super(texto_portugues, texto_ingles)
    @link_foto = link_foto
  end

  def imprimir()
    puts "Foto <#{link_foto()}>. Legenda em português: #{texto_portugues()}. Legenda em inglês: #{texto_ingles()}"
  end

end


#exemplos dos objetos da classe FotoTraduzida, que recebe os atributos da classe tradução:

#t = FotoTraduzida.new(link_foto, texto_portugues, texto_ingles)
#t1 = FotoTraduzida.new("cachorro.jpg", "cachorro correndo", "dog running")
#t2 = FotoTraduzida.new("gatofofinho.jpg", "gato dorminhoco", "sleeping cat")
#t3 = FotoTraduzida.new("paisagem.jpg", "paisagem da viagem", "travel landscape")
