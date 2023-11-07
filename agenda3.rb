@agenda = [{nome: "Marcus", telefone: "11994452551"}]

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
  
end
end
