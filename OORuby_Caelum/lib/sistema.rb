
# Ou você usa require_relative "livro" ou require "./livro.rb"

# Imports
require "./livro.rb"
require "./estoque.rb"

algoritmos = Livro.new("The Pragmatic Programmer", 100, 1999, true, "Editoras", "livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true, "Editoras", "livro")
programmer = Livro.new("Algoritmos", 100, 1998, true, "Editoras", "livro")
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, "Editoras", "livro")
revistona = Livro.new("Revista de Ruby", 10, 2012, true, "Revistas", "revista")

puts "Aula 1"

  livro = programmer
  livro.livro_para_newsletter
  
puts "--------"

puts "Aula 2"

  estoque = Estoque.new
  estoque << algoritmos << arquitetura << programmer << ruby
  estoque.exporta_csv
  puts "Total: #{estoque.total}"
  
puts "--------"

puts "Aula 3"

  estoque = Estoque.new
  estoque << algoritmos
  puts estoque.maximo_necessario
  estoque << arquitetura
  puts estoque.maximo_necessario
  estoque << programmer << ruby
  puts estoque.maximo_necessario
  estoque.vende algoritmos
  puts estoque.maximo_necessario
  
puts "--------"

puts "Aula 4"
  
  estoque = Estoque.new
  estoque << algoritmos << algoritmos << ruby << programmer << arquitetura 
  estoque << ruby << ruby << revistona << revistona
  estoque.vende ruby
  estoque.vende ruby
  estoque.vende ruby
  estoque.vende algoritmos
  estoque.vende algoritmos
  estoque.vende revistona
  puts estoque.livro_que_mais_vendeu_por_titulo.titulo
  puts estoque.revista_que_mais_vendeu_por_titulo.titulo

puts "--------"
