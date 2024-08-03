class Consulta
  # Estrutura de colaboradores
  attr_accessor :automato

  # Interface de instanciação
  def initialize(automato)
    @automato = automato
  end

  # Interface de consulta
  def estadoCorrente?()
    return @automato.estadoCorrente
  end

  def atingiuEOF?()
    return @automato.entrada.atingiuEOF?()
  end

  def configuracao?()
    estado = estadoCorrente?()
    configuracaoFita = @automato.entrada.configuracao?()
    return "(#{estado}, #{configuracaoFita})"
  end

  def estaEmEstadoFinal?()
    return @automato.estadosFinais.include?(estadoCorrente?())
  end
end
