
# Ou você usa require_relative "livro" ou require "./livro.rb"

# Imports
require "./livro.rb"
require "./revista.rb"
require "./e_book.rb"
require "./estoque.rb"

algoritmos = Livro.new("The Pragmatic Programmer", 100, 1999, true, true, "Editoras")
ruby = Livro.new("Programming Ruby", 100, 2004, true, true, "Editoras")
programmer = Livro.new("Algoritmos", 100, 1998, true, true, "Editoras")
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, true, "Editoras")
revistona = Revista.new("Revista de Ruby", 10, 2012, true, 3, "Revistas")
online_arquitetura = EBook.new("Introdução a Arquitetura e Design de Software", 50, 2012, "editora")

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

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura 
estoque << ruby << ruby << revistona << revistona << online_arquitetura
estoque.vende ruby
estoque.vende ruby
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende online_arquitetura

puts "Aula 4"
  
  puts estoque.livro_que_mais_vendeu_por_titulo.titulo
  puts estoque.revista_que_mais_vendeu_por_titulo.titulo

puts "--------"

puts "Aula 5"
  
  puts estoque.livro_que_mais_vendeu_por_titulo.titulo
  puts estoque.revista_que_mais_vendeu_por_titulo.titulo
  puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
  puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)

puts "--------"

puts "Aula 6"
  
  puts estoque.livro_que_mais_vendeu_por_titulo.titulo
  puts estoque.revista_que_mais_vendeu_por_titulo.titulo
  puts estoque.ebook_que_mais_vendeu_por_titulo.titulo

puts "--------"

puts "Aula 7"

  # Na aula 7 ouve só uma fatoração no código.

puts "--------"

puts "Aula 8"

  # Na aula 8 ouve só uma fatoração no código.

puts "--------"