# Conceitos Essenciais - Cadeias

=begin
Em Ruby, símbolos e cadeias podem ser codificados segundo diferentes estratégias. Uma delas é considerar um símbolo
por valores do tipo String e cadeias por instâncias da classe Array.
=end

cadeia_exemplo_1 = ["a", "b", "c" ]

# Método split()

=begin
Usar // como argumento do método split() permite que ele retorne um Array contendo os seus caracteres.
=end

"abc".split(//) == ["a", "b", "c" ]

cadeia_exemplo_2 = "abc".split(//)

# Comprimento de Cadeia

=begin
O comprimento de uma cadeia r, denotado por |r|, pode ser codificado em Ruby pela operação length() sobre a
instância da classe Array que representa a cadeia r.
=end

