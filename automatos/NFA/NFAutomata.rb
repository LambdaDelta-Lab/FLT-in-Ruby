require '../Automata.rb'
require 'FitaLimitada.rb'
require 'NFMovimentacao.rb'

class NFAutomata < Automata
  def instanciarEntrada()
    @entrada = FitaLimitada.new()
  end

  def instanciarMovimentacao()
    @movimentacao = NFMovimentacao.new(self)
  end
end
