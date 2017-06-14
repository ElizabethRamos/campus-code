require_relative('traducao')
require_relative('foto_traduzida')

#constantes

ADICIONAR_TRADUCAO = 1
VER_TODAS_AS_TRADUCOES = 2
BUSCAR_TRADUCAO_PT = 3
BUSCAR_TRADUCAO_EN = 4
INSERIR_FOTO = 5
SAIR = 0


puts 'Bem-vindo ao App de Traduções'

traducoes = []

def menu()
  puts
  puts '#' * 20
  puts 'Escolha uma opção:'
  puts "#{ADICIONAR_TRADUCAO} - Adicionar tradução"
  puts "#{VER_TODAS_AS_TRADUCOES} - Ver todas as traduções"
  puts "#{BUSCAR_TRADUCAO_PT} - Buscar uma tradução para Português"
  puts "#{BUSCAR_TRADUCAO_EN} - Buscar uma tradução para Inglês "
  puts "#{INSERIR_FOTO} - Insira uma foto"
  puts "#{SAIR} - sair"
  puts '#' * 20
  puts
end

def recebe_texto()
  gets.chomp
end

def mostrar_traducoes(traducoes)
 traducoes.each do |traducao|
  traducao.imprimir
 end
end

def adicionar_traducao(traducoes, tipo=:texto)
  #Escreva a expressão em PT-BR
  puts "Escreva a expressão em Portugues: "
  texto_portugues = recebe_texto()

  #Escreva a expressão em EN
  puts "Escreva a expressão em Ingles: "
  texto_ingles = recebe_texto()

  if tipo == :texto
    #traducao = { portugues: texto_portugues, ingles: texto_ingles}
    traducao = Traducao.new(texto_portugues, texto_ingles)
    traducoes << traducao

  elsif tipo == :foto
    puts "Adicione um link para a foto: "
    link_foto = recebe_texto()

    foto = FotoTraduzida.new(link_foto, texto_portugues, texto_ingles)
    traducoes << foto
  end

  puts 'Obrigada por inserir mais uma tradução :)'

end


def achar_traducoes(lista_de_traducoes, lingua)
  puts "Informe a palavra que deseja procurar em #{lingua}: "
  texto_busca = recebe_texto()

  traducoes_encontradas = lista_de_traducoes.select do |traducao|
    traducao.busca_texto(texto_busca, lingua)
  end

  puts "Nenhuma tradução encontrada" if traducoes_encontradas.empty?

  mostrar_traducoes(traducoes_encontradas)
end


menu()

opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do

  #Tomada de decisoes
  if (opcao_escolhida == ADICIONAR_TRADUCAO)
    adicionar_traducao(traducoes)

  elsif (opcao_escolhida == VER_TODAS_AS_TRADUCOES)
    mostrar_traducoes(traducoes)

  elsif (opcao_escolhida == BUSCAR_TRADUCAO_PT)
    # traducao de ingles para portugues
    achar_traducoes(traducoes, :ingles)

  elsif (opcao_escolhida == BUSCAR_TRADUCAO_EN)
    # traducao de portugues para ingles
    achar_traducoes(traducoes, :portugues)

  elsif (opcao_escolhida == INSERIR_FOTO)
    adicionar_traducao(traducoes, :foto)
  end

  menu()
  opcao_escolhida = gets.to_i
end # while
puts 'Até breve!'
