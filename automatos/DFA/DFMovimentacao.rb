require '../Movimentacao.rb'

class DFMovimentacao < Movimentacao
  # Interface especializada
  def calcularOndaDeClones()
    ondaDeClones = {}
    condicaoCorrente = [@automato.consulta.estadoCorrente?(), @automato.entrada.ler()]
    @automato.transicoes.each do |condicaoEsperada, estadoSeguinte|
      if (condicaoEsperada == condicaoCorrente)
        clone = @automato.clonar()
        ondaDeClones[clone] = estadoSeguinte
      end
    end
    return ondaDeClones
  end

  def mover(proximoEstado)
    @automato.estadoCorrente = proximoEstado
    @automato.entrada.avancar()
  end
end
