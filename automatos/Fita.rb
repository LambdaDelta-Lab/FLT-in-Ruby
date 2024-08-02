require 'Clonagem.rb'

class Fita
  # Estrutura de colaboradores
  attr_accessor :celulas
  attr_accessor :cursor

  # Interface de instanciação
  def initialize()
    iniciarCelulas()
  end

  def iniciarCelulas() # Caso não exista necessidade de instanciar estruturas especiais
  end

  # Interface característica
  def iniciar(cadeia)
    raise NotImplementedError.new("'iniciar()' não pode ser executado.")
  end

  def ler()
    raise NotImplementedError.new("'ler()' não pode ser executado.")
  end

  def avancar()
    raise NotImplementedError.new("'avancar()' não pode ser executado.")
  end

  def recuar()
    raise NotImplementedError.new("'recuar()' não pode ser executado.")
  end

  # Interface de consulta
  def atingiuBOF?()
    raise NotImplementedError.new("'atingiuBOF?()' não pode ser executado.")
  end

  def configuracao?()
    raise NotImplementedError.new("'configuracao?' não pode ser executado.")
  end

  # Interface de clonagem
  def clonar()
    return Clonagem.new().clonar(self)
  end
end
