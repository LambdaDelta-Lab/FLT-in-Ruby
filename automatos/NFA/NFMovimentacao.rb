require '../Movimentacao.rb'

class NFMovimentacao < Movimentacao
  ondaDeClones = {}
  condicaoCorrente = [@automato.consulta.estadoCorrente?(),
                      @automato.entrada.ler()]
  @automato.transicoes.each do |condicaoEsperada, estadosSeguintes|
    if (condicaoEsperada == condicaoCorrente)
      estadosSeguintes.each do |estadoSeguinte|
        clone = @automato.clonar()
        ondaDeClones[clone] = estadoSeguinte
      end
    end
  end
  return ondaDeClones
end

def mover(proximoEstado)
  @automato.estadoCorrente = proximoEstado
  @automato.entrada.avancar()
end

def adicionarTransicao(transicao)
  @transicoes.update(transicao)
end

end
