require 'DFReconhecedor.rb'

rfd = DFReconhecedor.new("q0", ["q1", "q2"])

rfd.automato.adicionarTransicao({["q0", "0"] => "q0"})
rfd.automato.adicionarTransicao({["q0", "1"] => "q1"})
rfd.automato.adicionarTransicao({["q0", "2"] => "q3"})
rfd.automato.adicionarTransicao({["q1", "0"] => "q3"})
rfd.automato.adicionarTransicao({["q1", "1"] => "q1"})
rfd.automato.adicionarTransicao({["q1", "2"] => "q2"})
rfd.automato.adicionarTransicao({["q2", "0"] => "q3"})
rfd.automato.adicionarTransicao({["q2", "1"] => "q3"})
rfd.automato.adicionarTransicao({["q2", "2"] => "q2"})
rfd.automato.adicionarTransicao({["q3", "0"] => "q3"})
rfd.automato.adicionarTransicao({["q3", "1"] => "q3"})
rfd.automato.adicionarTransicao({["q3", "2"] => "q3"})

rdf.iniciar("00001")
automatos = rfd.analisar()
puts rfd.reconheceu?() #true