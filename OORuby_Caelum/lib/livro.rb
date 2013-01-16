
require "./produto.rb"
require "./impresso.rb"

class Livro < Produto
  
  include Impresso
  
	def initialize(titulo, preco, ano_lancamento, possui_reimpressao, possui_sobrecapa, editora)
    super(titulo, preco, ano_lancamento, editora) # construtor de Produto
    @possui_reimpressao = possui_reimpressao
    @possui_sobrecapa = possui_sobrecapa
  end
  
  def matches?(query)
    ["livro", "impresso"].include?(query)
    # query=="livro" || query=="impresso"
  end
	
	def livro_para_newsletter
		if @ano_lancamento < 1999
			puts "Newsletter/Liquidacao"
			puts @titulo
			puts @preco
			puts @possui_reimpressao
		end
	end
  
  def possui_sobrecapa?
    @possui_sobrecapa
  end
end