#Traducao de expressoes do PT-BR para EN

#Menu
#1- adicionar uma tradução
#2- ver todas as traducoes

puts 'Bem-vindo ao App de Traduções'

traducoes = []

def menu()
  puts
  puts '#' * 20
  puts 'Escolha uma opção:'
  puts '1 - Adicionar tradução'
  puts '2 - Ver todas as traduções'
  puts '3 - Buscar uma tradução para Português'
  puts '4 - Buscar uma tradução para Inglês'
  puts '0 - sair'
  puts '#' * 20
  puts
end

def recebe_texto()
  gets.chomp
end

def adicionar_traducao(traducoes)
  #Escreva a expressão em PT-BR
  puts "Escreva a expressão em Portugues: "
  texto_portugues = recebe_texto()

  #Escreva a expressão em EN
  puts "Escreva a expressão em Ingles: "
  texto_ingles = recebe_texto()

  traducao = { portugues: texto_portugues, ingles: texto_ingles}
  traducoes << traducao

  puts 'Obrigada por inserir mais uma tradução :)'
end

def mostrar_traducoes(lista)
  lista.each do |traducao|
     puts "A tradução de #{traducao[:portugues]} é #{traducao[:ingles]}"
  end
end

def achar_traducoes(traducoes, lingua)
  puts "Informe a palavra que deseja procurar em #{lingua}: "
  texto_busca = recebe_texto()

  traducoes_encontradas = traducoes.select do |traducao|
    traducao[lingua].upcase.include? texto_busca.upcase
  end

  puts "Nenhuma tradução encontrada" if traducoes_encontradas.empty?

  mostrar_traducoes(traducoes_encontradas)
end

menu()

opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do

  #Tomada de decisoes
  if (opcao_escolhida == 1)
    adicionar_traducao(traducoes)

  elsif (opcao_escolhida == 2)
    mostrar_traducoes(traducoes)

  elsif (opcao_escolhida == 3)
    # traducao de ingles para portugues
    achar_traducoes(traducoes, :ingles)

  elsif (opcao_escolhida == 4)
    # traducao de portugues para ingles
    achar_traducoes(traducoes, :portugues)
  end

  menu()
  opcao_escolhida = gets.to_i
end # while
puts 'Até breve!'
