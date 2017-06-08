#Traducao de expressoes do PT-BR para EN

#Menu 
#1- adicionar uma tradução
#2- ver todas as traducoes

puts 'Bem-vindo ao App de Traduções'

dicionario = {}

def menu
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

#Fluxo da opção 1

#Obrigada por inserir mais uma tradução :)
menu
opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do	

  #Tomada de decisoes 
  if (opcao_escolhida == 1)
    #Escreva a expressão em PT-BR 
    puts "Escreva a expressão em Portugues: "
    texto_portugues = gets.chomp
   

    #Escreva a expressão em EN
    puts "Escreva a expressão em Ingles: "
    texto_ingles = gets.chomp
    
    dicionario[texto_portugues] = texto_ingles
    puts 'Obrigada por inserir mais uma tradução :)'  

  elsif (opcao_escolhida == 2)
    dicionario.each  {|texto_portugues, texto_ingles| puts "A tradução de #{texto_portugues} é #{texto_ingles}"}    

  elsif (opcao_escolhida == 3)
    puts "Digite uma palavra em português: "
    palavra = gets.chomp

    traducao = dicionario[palavra]
    # se a palavra existir no dicionario, imprima a traducao
    if traducao
      puts "A tradução de #{palavra} é #{traducao}"
    # se a palavra nao existir no dicionario, avise ao usuario
    else
      puts "Desculpe, :( Esta palavra ainda não foi traduzida"
    end
  end

  menu
  opcao_escolhida = gets.to_i

end

puts "Até Breve!"

