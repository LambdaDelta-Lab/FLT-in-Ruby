require '../Automata.rb'
require '../FitaLimitada.rb'
require 'DFMovimentacao.rb'

class DFAutomata.rb < Automato
  # Interface de instanciação
  def instanciarEntrada()
    @entrada = FitaLimitada.new()
  end

  def instanciarMovimentacao()
    @movimentacao = DFMovimentacao.new(self)
  end

  # Interface de ajuste estrutural
  def adicionarTransicao(transicao)
    @transicoes.update(transicao)
  end
end
