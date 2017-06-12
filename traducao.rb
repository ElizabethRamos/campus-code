class Traducao
  def initialize(texto_portugues, texto_ingles)
    @texto_portugues = texto_portugues
    @texto_ingles = texto_ingles
  end

  def imprime_traducao()
    puts "Traducao de #{@texto_portugues} é #{@texto_ingles}"
  end

  def busca_texto(lingua, texto_busca)
    if lingua == :portugues
       @texto_portugues.upcase.include? texto_busca.upcase
    elsif lingua == :ingles
      @texto_ingles.upcase.include? texto_busca.upcase
    end
  end
end
