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

# Comprimento de cadeia

=begin
O comprimento de uma cadeia r, denotado por |r|, pode ser codificado em Ruby pela operação length() sobre a
instância da classe Array que representa a cadeia r. Uma outra alternativa seria usar a operação size().
=end

r = "abc".split(//)
r.length()
r.size()

# Cadeia vazia

=begin
Uma cadeia vazia não contém símbolos, uma instância de classe Array sem elementos pode ser utilizada para
representar ela.
=end

cadeia_vazia = []

# Concatenação de cadeias

=begin
A concatenação das cadeias r e s é formada pela justaposição dos símbolos de r seguidos pelos símbolos de s.
O operador + da classe Array pode ser usado para codificar a concatenação de cadeias em Ruby.
=end

r = "abc".split(//)
s = "dbaca".split(//)
t = "a".split(//)
r + s
s + r
r + t
t + s
