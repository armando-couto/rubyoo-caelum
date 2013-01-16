
require "./produto.rb"

class EBook < Produto
  
	# o construtor vem de Produto
  
  def matches?(query)
    ["ebook", "digital"].include?(query)
  end
end