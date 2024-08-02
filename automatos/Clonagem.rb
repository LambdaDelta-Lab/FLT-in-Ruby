require 'yaml'

class Clonagem
  def clonar(original)
    dadosDoClone = "#{original.class}.dat"
    open(dadosDoClone, 'w') { |arquivo|
      YAML.dump(original, arquivo)
    }
    clone = open(dadosDoClone) { |arquivo|
      YAML.load(arquivo)
    }
  end
end
