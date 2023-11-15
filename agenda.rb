@agenda = [{nome: "Marcus", telefone: "11994452551"},{nome: "Vinicius", telefone: "11953594786"}]

def listarContatos
  @agenda.each do |event|
  puts "Nome: #{event[:nome]} Telefone: #{event[:telefone]}"
  end
end

def adiconar
  print "Qual o nome ?"
  nome = gets.chomp
  print "Qual o Telefone ?"
  telefone = gets.chomp
  @agenda << {nome: nome, telefone: telefone}
end

def verContato

  print "Qual Contato voce quer buscar ? "
  nomeContato = gets.chomp

  found = false

  @agenda.each do |element|
    if element[:nome].downcase.include?(nomeContato.downcase)
      puts "__________"
      puts "Nome: #{element[:nome]} Telefone: #{element[:telefone]}"
      puts "__________"
      found = true
    end
  end
  puts "Não encontrado" unless found
end

def editarContato
  print "Qual nome deseja editar ?"
  nome = gets.chomp

  @agenda.each do |element|
    if element[:nome].downcase.include?(nome.downcase)
        print "Qual nome de seja atribuir ?"
      novo_nome = gets.chomp

        element[:nome] = novo_nome
        puts "Nome: #{element[:nome]} Telefone: #{element[:telefone]}"
    end
  end
end 


loop do
puts "SELECIONE UMA OPÇÃO:\n1. Contatos\n2. Adicionar Contatos\n3. Ver Contato\n4. Editar Contato\n5. Excluir Contato\n0. Sair"

option = gets.chomp.to_i

case option
when 0
 puts  "Ate logo!"
 break

when 1
  listarContatos
  break

when 2
  adiconar
when 3
  verContato
  break
when 4
  editarContato
end
end
