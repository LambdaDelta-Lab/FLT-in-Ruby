require '../Reconhecedor.rb'
require 'NFAutomata.rb'

class NFReconhecedor < Reconhecedor
  def instanciarAutomato(estadoInicial, estadosFinais)
    @automato = NFAutomata.new(estadoInicial, estadosFinais)
  end
end
