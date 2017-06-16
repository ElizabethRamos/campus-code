
class NovaFoto

  def initialize (link_foto, nome, telefone, email)
    @link_foto = link_foto
    @nome = nome
    @telefone = telefone
    @email = email
  end

   def imprimir()
     puts "Foto <#{@link_foto}>. nome: #{@nome}, telefone: #{@telefone}, email: #{@email}"
   end
end
