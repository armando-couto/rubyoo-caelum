
require "./produto.rb"
require "./impresso.rb"

class Revista < Produto
  
  include Impresso
  
  attr_reader :numero
  
	def initialize(titulo, preco, ano_lancamento, possui_reimpressao, numero, editora)
    super(titulo, preco, ano_lancamento, editora) # construtor de Produto
    @possui_reimpressao = possui_reimpressao
    @numero = numero
  end
  
  def matches?(query)
    ["revista", "impresso"].include?(query)
    # query=="revista" || query=="impresso"
  end
end