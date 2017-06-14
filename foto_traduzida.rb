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
