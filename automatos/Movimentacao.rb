class Movimentacao
  # Estrutura de colaboradores
  attr_accessor :automato

  # Interface de instanciação
  def initialize(automato)
    @automato = automato
  end

  # Interface característica
  def executar()
    raise NotImplementedError.new("'executar()' deve ser implementado nas subclasses.")
  end

  def calcularOndaDeClones()
    raise NotImplementedError.new("'calcularOndaDeClones()' deve ser implementado nas subclasses.")
  end

  def mover(proximoEstado)
    raise NotImplementedError.new("'mover()' deve ser implementado nas subclasses.")
  end
end
