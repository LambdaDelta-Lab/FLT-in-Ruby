require File.expand_path('~/Documents/Ruby/Automato.rb')
require File.expand_path('~/Documents/Ruby/FitaLimitada.rb')
require File.expand_path('~/Documents/Ruby/DFA/DFMovimentacao.rb')

class DFAutomata < Automato
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
