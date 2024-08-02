require_relative 'DFAutomataClass.rb'
dfa = DFAutomata.new('DFAutomata.yml')

puts dfa.aceitar?('aab')
puts dfa.aceitar?('bba')
