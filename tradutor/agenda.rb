require_relative 'foto'

puts 'Bem vindo a agenda de contatos'

contatos = []

def menu()
  puts
  puts
  puts '1- Adicionar contato'
  puts '2- Ver todos os contatos'
  puts '3- Buscar um contato por nome'
  puts '4- Buscar um contato por telefone'
  puts '5- Buscar um contato por email'
  puts '6- Adicionar uma foto'
  puts  '0 - sair'
  puts
  puts
end

def recebe_texto()
    gets.chomp
end

def listar_contatos(contatos)
  contatos.each do |contato|
    contato.imprimir
  end
end

def achar_contato_por_nome(contatos, nome)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato.tem_esse_nome?(nome)
  end
  listar_contatos contatos_encontrados
  puts "Nenhum contato encontrado" if contatos_encontrados.empty?
end

def achar_contato_por_telefone(contatos, telefone)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato.tem_esse_telefone?(telefone)
  end
  listar_contatos contatos_encontrados
  puts "Nenhum contato encontrado" if contatos_encontrados.empty?
end

def achar_contato_por_email(contatos, email)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato.tem_esse_email?(email)
  end

  listar_contatos contatos_encontrados
  puts "Nenhum contato encontrado" if contatos_encontrados.empty?
end

def adicionar_contato(contatos)
  puts "Escreva o nome do contato:"
  nome = recebe_texto()

  puts "Escreva o telefone do contato:"
  telefone = recebe_texto()

  puts "Escreva o email do contato:"
  email = recebe_texto

  contato = Contato.new(nome, telefone,  email)
  contatos << contato
end

def  adicionar_foto(contatos)
  puts "Insira o link da foto"
  link_foto = recebe_texto

  puts "Escreva o nome do contato:"
  nome = recebe_texto()

  puts "Escreva o telefone do contato:"
  telefone = recebe_texto()

  puts "Escreva o email do contato:"
  email = recebe_texto

  foto = NovaFoto.new(link_foto, nome, telefone, email)
  contatos << foto

  puts "obrigada por inserir o link da foto"
end

menu()

opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do
  #Tomada de decisoes
  if (opcao_escolhida == 1)
    adicionar_contato(contatos )

  elsif (opcao_escolhida == 2)
    listar_contatos(contatos)

  elsif (opcao_escolhida == 3)
    #buscar um contato por nome
    puts "Informe o nome que deseja procurar:"
    nome = recebe_texto

    achar_contato_por_nome(contatos, nome)
  elsif (opcao_escolhida == 4)
    #buscar um contato por telefone
    puts "Informe o telefone que deseja procurar:"
    telefone = recebe_texto

    achar_contato_por_telefone(contatos, telefone)
  elsif (opcao_escolhida == 5)
    #buscar um contato por email
    puts "Informe o email que deseja procurar:"
    email = recebe_texto

    achar_contato_por_email(contatos, email)

  elsif (opcao_escolhida == 6)

    adicionar_foto(contatos)

  end
  menu()
  opcao_escolhida = gets.to_i
end # while
puts "Até mais"
