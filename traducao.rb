#nome
class Traducao

  #atributos em ruby comecam com @
  attr_accessor :texto_ingles
  attr_reader :texto_portugues
  attr_writer :texto_portugues

  #construtor
  def initialize(texto_portugues, texto_ingles)
    @texto_portugues = texto_portugues
    @texto_ingles = texto_ingles
  end

#metodos - acoes - comportamentos
  def imprime_traducao()
    puts "Traducao de #{texto_portugues()} é #{texto_ingles()}"
  end

  def busca_texto(texto_busca, lingua)
    if lingua == :portugues
       texto_portugues().upcase().include? (texto_busca.upcase)
    elsif lingua == :ingles
      texto_ingles().upcase().include? (texto_busca.upcase)
    end
  end
end
