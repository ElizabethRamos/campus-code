#nome
class Traducao

  #atributos em ruby comecam com @
  attr_accessor :texto_ingles, :texto_portugues - #permite leitura e mudanca dos atributos.
  #attr_reader :texto_ingles, :texto_portugues - permite leitura, mas nao permite mudanca
  #attr_writer :texto_ingles, :texto_portugues - permite mudar o atributo, mas nao permite leitura

  #construtor
  def initialize(texto_portugues, texto_ingles)
    @texto_portugues = texto_portugues
    @texto_ingles = texto_ingles
  end

#metodos - acoes - comportamentos
  def imprimir()
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


#exemplos dos objetos da classe traducao
#t = Traducao.new(texto_portugues, texto_ingles)
#t = Traducao.new("cachorro", "dog")
#t1 = Traducao.new("amor", "love")
#t2 = Traducao.new("mesa", "table")
