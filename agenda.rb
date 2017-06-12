puts 'Bem vindo a agenda de contatos'

contatos = [
  {
    :nome => "Zibryulos",
    :telefone => "98765432",
    :email => "zibryulos@example.com",
  },
  {
    :nome => "Hamulas",
    :telefone => "12345678",
    :email => "hamulas@example.com",
  }
]

def menu()
  puts
  puts
  puts '1- Adicionar contato'
  puts '2- Ver todos os contatos'
  puts '3- Buscar um contato por nome'
  puts '4- Buscar um contato por telefone'
  puts '5- Buscar um contato por email'
  puts  '0 - sair'
  puts
  puts
end

def recebe_texto()
    gets.chomp
end

def mostrar_contato(contato)
  puts "Nome #{contato[:nome]}\ttelefone #{contato[:telefone]}\temail: #{contato[:email]}"
end

def listar_contatos(contatos)
  contatos.each do |contato|
    mostrar_contato(contato)
  end
end

def achar_contato_por_nome(contatos, nome)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato[:nome].upcase.include? nome.upcase
  end
  listar_contatos contatos_encontrados
  puts "Nenhum contato encontrado" if contatos_encontrados.empty?
end

def achar_contato_por_telefone(contatos, telefone)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato[:telefone].upcase.include? telefone.upcase
  end
  listar_contatos contatos_encontrados
  puts "Nenhum contato encontrado" if contatos_encontrados.empty?
end

def achar_contato_por_email(contatos, email)
  # procurar os contatos, filtrando por nome -> select
  contatos_encontrados = contatos.select do |contato|
    contato[:email].upcase.include? email.upcase
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

  contato = {
    :nome =>  nome,
    :telefone => telefone,
    :email => email
  }

  contatos << contato
end

def nao_implementado()
  puts "Opção não implementada ainda."
end

menu()

opcao_escolhida = gets.to_i

while opcao_escolhida != 0 do
  #Tomada de decisoes
  if (opcao_escolhida == 1)
    adicionar_contato(contatos)

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
  end
  menu()
  opcao_escolhida = gets.to_i
end # while
puts "Até mais"
