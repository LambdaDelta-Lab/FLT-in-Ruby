# Conceitos Essenciais - Linguagens

=begin
Uma linguagem é um conjunto, finito ou infinito, de cadeias de símbolos. Sentença é uma cadeia de símbolos que
pertence a alguma linguagem. Em Ruby, é possível codificar linguagens finitas por instâncias de classe Array.
=end

alfabeto = ["a", "b", "c"]
linguagem1 = [[]]
linguagem2 = [["a", "b"], [], ["c"], ["c", "c", "c"]]
linguagem3 = [["a"], ["b"], ["c"]]

# Concatenação de linguagens

=begin
A concatenação de duas linguagens X e Y resulta no conjunto de cadeias que podem ser formados pela concatenação de
cadeias x de X com cadeias y de Y. Essa operação pode ser codificada da seguinte maneira em Ruby. Lembre-se que
uma linguagem é codificada como um Array que contém como elementos outros Arrays.
=end

def concatenar( linguagemX, linguagemY )
	linguagemZ = []
	linguagemX.each do |x|
		linguagemY.each do |y|
			linguagemZ << x + y
		end
	end
	return linguagemZ
end
