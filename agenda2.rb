@agenda = [{nome: "Marcus",  telefone: "11953594786"},{nome: "Vinicius",  telefone: "11994452551"}]

def all_contacts
  puts "............................"
 @agenda.each do |element|
 puts "Nome: #{element[:nome]} Telefone: #{element[:telefone]}"
  end
  puts "............................"
end

def add_contact
  print "Nome: "
  nome = gets.chomp
  print "Telefone: "
  telefone = gets.chomp
  @agenda << {nome: nome, telefone: telefone}
end

def show_contact
  print 'Qual nome do seu contato ? '
  nome = gets.chomp

  found = false

  @agenda.each do |element|
    if  element[:nome].downcase.include?(nome.downcase)
      puts "............................"
      puts "Nome: #{element[:nome]} Telefone: #{element[:telefone]}"
      puts "............................"
      found = true
   end
  end 
  puts "NÃO ENCONTRADO!" unless found
end

loop do
  puts "SELECIONE UMA OPÇÃO:\n1. Contatos\n2. Adicionar Contatos\n3. Ver Contato\n4. Editar Contato\n5. Excluir Contato\n0. Sair"
  opcao = gets.chomp.to_i

  case opcao
  when 0
    puts "Ate mais! "
    break
  when 1
    all_contacts
  when 2
    add_contact
  when 3
    show_contact
  end

end
