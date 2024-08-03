require File.expand_path('~/Documents/Ruby/Consulta.rb')
require File.expand_path('~/Documents/Ruby/Clonagem.rb')

class Automato
  # Estrutura de colaboradores
  attr_accessor :entrada
  attr_accessor :transicoes
  attr_accessor :estadosFinais
  attr_accessor :estadoCorrente
  attr_accessor :movimentacao
  attr_accessor :consulta

  # Interface de instanciação
  def initialize(estadoInicial, estadosFinais)
    instanciarEstruturaEspecifica()
    instanciarEntrada()
    instanciarTransicoes()
    instanciarEstadosFinais(estadosFinais)
    instanciarEstadoCorrente(estadoInicial)
    instanciarServicos()
  end

  def instanciarEstruturaEspecifica()
  end

  def instanciarEntrada()
    raise NotImplementedError.new("'instanciarEntrada()' não pode ser executado.")
  end

  def instanciarTransicoes()
    @transicoes = {}
  end

  def adicionarTransicao(transicao)
    raise NotImplementedError.new("'adicionarTransicao()' não pode ser executado.")
  end

  def instanciarEstadosFinais(estadosFinais)
    @estadosFinais = estadosFinais
  end

  def instanciarEstadoCorrente(estadoInicial)
    @estadoCorrente = estadoInicial
  end

  def instanciarServicos()
    instanciarConsulta()
    instanciarMovimentacao()
  end

  def instanciarConsulta()
    @consulta = Consulta.new(self)
  end

  # Interface característica
  def iniciar(cadeia)
    @entrada.iniciar(cadeia)
  end

  def executar()
    return @movimentacao.executar()
  end

  # Interface de consulta
  def configuracao?()
    return @consulta.configuracao?()
  end

  def estaEmEstadoFinal?()
    return @consulta.estaEmEstadoFinal?()
  end

  # Interface de clonagem
  def clonar()
    return Clonagem.new().clonar(self)
  end
end
