class Contato
  def initialize(nome, telefone, email)
    @nome = nome
    @telefone = telefone
    @email = email
    end

  def mostrar()
    puts "Nome: #{@nome}\t telefone: #{@telefone}\t email: #{@email}"
  end

  def tem_esse_nome?(nome)
    @nome.upcase.include? nome.upcase
  end

  def tem_esse_telefone?(telefone)
    @telefone.upcase.include? telefone.upcase
  end

  def tem_esse_email?(email)
    @email.upcase.include? email.upcase
  end

  #def tem_essa_foto?(foto)
    #@foto.upcase.include? foto.upcase
end
