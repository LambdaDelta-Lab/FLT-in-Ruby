require File.expand_path('~/Documents/Ruby/Reconhecedor.rb')
require File.expand_path('~/Documents/Ruby/DFA/DFAutomata.rb')

class DFReconhecedor < Reconhecedor
  def instanciarAutomato(estadoInicial, estadosFinais)
    @automato = DFAutomata.new(estadoInicial, estadosFinais)
  end
end
