#Traducao de expressoes do PT-BR para EN

#Menu 
#1- adicionar uma tradução
#2- ver todas as traducoes

puts 'Bem-vindo ao App de Traduções'

traducoes = []
def menu
  puts 'Escolha uma opção:'
  puts '1 - Adicionar tradução'
  puts '2 - Ver todas as traduções'
  puts '3 - Buscar uma tradução'
  puts '0 - sair'
end

#Fluxo da opção 1

#Obrigada por inserir mais uma tradução :)
menu
opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do	

  #Tomada de decisoes 
  if (opcao_escolhida == 1)
    #Escreva a expressão em PT-BR 
    puts "Escreva a expressão em Portugues"
    texto_portugues = gets.chomp

    #Escreva a expressão em EN
    puts "Escreva a expressão em ingles"
    texto_ingles = gets.chomp

    traducoes << "Tradução de" + texto_portugues + "é" + texto_ingles
    puts 'Obrigada por inserir mais uma tradução :)'  

  elsif (opcao_escolhida == 2)
    puts traducoes
  end

  menu
  opcao_escolhida = gets.to_i

end

puts "Adeus..."



