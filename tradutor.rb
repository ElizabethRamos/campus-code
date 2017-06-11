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
  puts '3 - Buscar uma tradução'
  puts '0 - sair'
  puts '#' * 20
  puts
end

def recebe_texto()
  gets.chomp
end

menu()

opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do

  #Tomada de decisoes
  if (opcao_escolhida == 1)
    #Escreva a expressão em PT-BR
    puts "Escreva a expressão em Portugues: "
    texto_portugues = recebe_texto()


    #Escreva a expressão em EN
    puts "Escreva a expressão em Ingles: "
    texto_ingles = recebe_texto()

    traducoes << "A tradução de " + texto_portugues + " é " + texto_ingles

    puts 'Obrigada por inserir mais uma tradução :)'

  elsif (opcao_escolhida == 2)
    puts traducoes

  elsif (opcao_escolhida == 3)
    puts 'Informe a palavra que deseja procurar: '
    texto_busca = recebe_texto()

    # traducoes_encontradas = [] #o proprio select já cria o array

    traducoes_encontradas = traducoes.select do |traducao|
      traducao.include? texto_busca
    end

  #  traducoes.each do |traducao|
  #    if(traducao.include? texto_busca)
  #      traducoes_encontradas << traducao
  #    end
  #  end

    if traducoes_encontradas.length == 0
      puts "Nenhuma tradução encontrada"
    else
      puts traducoes_encontradas
    end

  end # opção_escolhida ==3
  menu()
  opcao_escolhida = gets.to_i
end # while
puts 'Até breve!'