require '../Reconhecedor.rb'
require 'DFAutomata.rb'

class DFReconhecedor < Reconhecedor
  def instanciarAutomato(estadoInicial, estadosFinais)
    @automato = DFAutomata.new(estadoInicial, estadosFinais)
  end
end
