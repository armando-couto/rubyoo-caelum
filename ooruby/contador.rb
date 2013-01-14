# To change this template, choose Tools | Templates
# and open the template in the editor.

module Contador
  attr_reader :maximo_necessario
  
  def << (livro)
    push (livro)
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    self
  end
end