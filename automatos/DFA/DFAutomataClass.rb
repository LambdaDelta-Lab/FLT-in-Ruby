require 'yaml'

class DFAutomata
        attr_accessor :estados, :alfabeto, :estadoInicial, :estadosFinais, >

        def initialize(yaml_file)
                config = YAML.load_file(yaml_file)

                @estados = config['estados']
                @alfabeto = config['alfabeto']
                @estadoInicial = config['estadoInicial'].first
                @estadosFinais = config['estadosFinais']
                @transicoes = config['transicoes']
        end

        def aceitar?(cadeia)
                estadoAtual = @estadoInicial

                cadeia.each_char do |simbolo|
                        return false unless @alfabeto.include?(simbolo)
                        estadoAtual = @transicoes[estadoAtual][simbolo]
                        return false unless estadoAtual
                end

                @estadosFinais.include?(estadoAtual)
        end
end
