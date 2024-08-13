require File.expand_path('~/Documents/Ruby/Consulta.rb')
require File.expand_path('~/Documents/Ruby/Clonagem.rb')

# Classe Automato, que será usada como base para todos os tipos de automatos
class Automato

# Atributos que todo automato deve possuir
attr_accessor :entrada, :transicoes, :estadosFinais, :estadoAtual, :movimentacao, :consulta

# Interface de instanciação
def initialize(estadoInicial, estadosFinais)
	instanciarEstruturaEspecifica()
	instanciarEntrada()
	instanciarTransicoes()
	instanciarEstadosFinais(estadosFinais)
	instanciarEstadoAtual(estadoInicial)
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

def instanciarEstadoAtual(estadoInicial)
	@estadoAtual = estadoInicial
end

def instanciarServicos()
	instanciarConsulta()
	instanciarMovimentacao()
end

def instanciarConsulta()
	@consulta = Consulta.new(self)
end

def instanciarMovimentacao()
	raise NotImplementedError.new("'instanciarMovimentacao()' não pode ser executado."
end

# Interface característica
def iniciar(cadeia)
	@entrada.iniciar(cadeia)
end

def executar()
	return @movimentacao.executar()
end

# Interface de clonagem
def clonar()
	return Clonagem.new().clonar(self)
end
