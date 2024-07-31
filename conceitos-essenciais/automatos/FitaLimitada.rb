# Fita limitada

$:.unshift(File.expand_path("../..", __FILE__))
$:.unshift(File.expand_path("../../../../lab", __FILE__))

require '02/af/servico/Clonagem'

class FitaLimitada
	
	# Interface característica
	
	def iniciar( cadeia )
		@celulas = "<" + cadeia + ">"
		@cursor = 1
	end
	
	def ler()
		return @celulas[ @cursor ].chr()
	end
	
	def avancar()
		n = @celulas.length() - 2
		@cursor = @cursor + 1 if( (0 .. n).include?( @cursor ) )
	end
	
	def recuar()
		n = @celulas.length() - 1
		@cursor = @cursor - 1 if( (1 .. n).include?( @cursor ) )
	end
	
	# Interface de consulta
	
	def atingiuBOF?()
		return @celulas[ @cursor ].chr == "<"
	end
	
	def configuracao?()
		simboloCorrente = @celulas [ @cursor ].chr
		prefixo = ""
		sufixo = ""
		n = @celulas.length(0 .. n-1).each { |i|
			prefixo = prefixo + @celulas[i].chr if ( i < @cursor )
			sufixo = sufixo + @celulas[i].chr if ( i > @cursor )
		}
		return "(%s, %s[%s]%s)"%
			[@cursor, prefixo, simboloCorrente, sufixo]
	end
	
end
