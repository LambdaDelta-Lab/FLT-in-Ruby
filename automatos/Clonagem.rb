require 'yaml'

class Clonagem
  def clonar(original)
    dadosDoClone = "#{original.class}.dat"
    open(dadosDoClone, 'w') do |arquivo|
      YAML.dump(original, arquivo)
    end
    clone = open(dadosDoClone) do |arquivo|
      YAML.safe_load(arquivo, permitted_classes: [original.class, DFAutomata, FitaLimitada, DFMovimentacao, Consulta], aliases: true)
    end
    clone
  end
end
