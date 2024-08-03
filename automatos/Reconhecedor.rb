require File.expand_path('~/Documents/Ruby/Automato.rb')

class Reconhecedor
  # Estrutura de colaboradores
  attr_accessor :automato

  # Interface de instanciação
  def initialize(estadoInicial, estadosFinais)
    instanciarEstruturaEspecifica()
    instanciarAutomato(estadoInicial, estadosFinais)
  end

  def instanciarEstruturaEspecifica()
  end

  def instanciarAutomato(estadoInicial, estadosFinais)
    raise NotImplementedError.new("'instanciarAutomato()' não pode ser executado.")
  end

  # Interface característica
  def iniciar(cadeia)
    @automato.iniciar(cadeia)
  end

  def analisar()
    @subEspacoAutomatos = @automato.executar() || []
  end

  def reconheceu?()
    reconheci = false
    @subEspacoAutomatos.each do |automato|
      reconheci = true if (condicaoDoAutomato?(automato))
    end
    return reconheci
  end

  def condicaoDoAutomato?(automato)
    return (automato.consulta.atingiuEOF?() && automato.consulta.estaEmEstadoFinal?())
  end
end
