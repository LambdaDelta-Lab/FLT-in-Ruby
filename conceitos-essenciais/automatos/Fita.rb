# Fita

$:.unshift(File.expand_path("../..", __FILE__))
$:.unshift(File.expand_path("../../../../lab", __FILE__))

require '02/af/servico/Clonagem'

class Fita
	# Estrutura de colaboradores
	
	attr_accessor :celulas
	attr_accessor :cursor
	
	# Interface de instanciação
	
		## O método initialize() é executado quando se instancia uma fita
		## Isso ajuda a suportar diferentes naturezas de fitas
		
	def initialize()
		iniciarCelulas()
	end
	
		## Caso não exista a necessidade de instanciar estruturas especiais,
		## então nenhum ação adicional é realizada e o método iniciarCelulas() é executado
	
	def iniciarCelulas() end
	
	# Interface característica
	
		## O método iniciar() é usado para registrar uma cadeia de símbolos nas células da fita
	def iniciar( cadeia )
		raise NotImplementedError.new(
			"'iniciar()' não pode ser executado." )
	end
		
		## O método ler() faz a leitura do símbolo que se encontra na célula apontada pelo cursor
	def ler()
		raise NotImplementedError.new(
			"'ler()' não pode ser executado.")
	end
		
		## O método avancar() move o cursor para a próxima célula da fita
	def avancar()
		raise NotImplementedError.new(
			"'avancar()' não pode ser executado.")
	end
	
		## O método recuar() faz o recuo de uma posição do cursor
	def recuar()
		raise NotImplementedError.new(
			"'recuar()' não pode ser executado.")
	end
	
		## O método atingiuBOF?() verifica se o cursor chegou no limita à esquerda da fita
	def atingiuBOF?()
		raise NotImplementedError.new(
			"'atingiuBOF?()' não pode ser executado.")
	end
	
	# Interface de consulta
	
	def configuracao?()
		raise NotImplementedError.new(
			"'configuracao?()' não pode ser executado.")
	end
	
	# Interface de clonagem
	
	def clonar()
		return Clonagem.new().clonar( self )
	end
end
