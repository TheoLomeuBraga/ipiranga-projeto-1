--[[
Definir o objetivo do projeto: O objetivo do projeto é criar um dashboard que permite monitorar as atividades do clube de vantagens, como o número de usuários cadastrados, os benefícios oferecidos, o número de resgates e o engajamento dos usuários.
Definir as histórias de usuário: As histórias de usuário são descrições de funcionalidades que o dashboard deve ter para atender as necessidades dos usuários. Algumas histórias de usuário para o dashboard de um clube de vantagens podem incluir:
Como administrador do clube, eu quero ver o número de usuários cadastrados, para saber quantos usuários estão utilizando o clube de vantagens.

Como administrador do clube, eu quero ver os benefícios oferecidos, para saber quais são os benefícios mais populares.

Como administrador do clube, eu quero ver o número de resgates, para saber quantos usuários estão aproveitando os benefícios oferecidos.

Como administrador do clube, eu quero ver o engajamento dos usuários, para saber se os usuários estão satisfeitos com o clube de vantagens.

Priorizar as histórias de usuário: A equipe de desenvolvimento deve priorizar as histórias de usuário de acordo com o valor que elas entregam para o clube de vantagens. As histórias de usuário que entregam mais valor devem ser desenvolvidas primeiro.
Estimar o tempo de desenvolvimento: A equipe de desenvolvimento deve estimar o tempo necessário para desenvolver cada história de usuário. Essa estimativa ajuda a planejar o tempo necessário para o desenvolvimento do dashboard.
Desenvolver o dashboard: A equipe de desenvolvimento deve seguir as práticas do Scrum para desenvolver o dashboard, como fazer reuniões diárias, realizar revisões de sprint e retrospectivas.
Testar o dashboard: Antes de disponibilizar o dashboard para os usuários, é importante testá-lo para garantir que ele está funcionando corretamente e atendendo as necessidades dos usuários.

Algumas perguntas de informações e análise que podem ser respondidas pelo dashboard incluem:
Quantos usuários cadastrados temos no clube de vantagens?
Quais são os benefícios mais populares entre os usuários?
Qual é o número de resgates em um determinado período de tempo?
Qual é o engajamento dos usuários com o clube de vantagens?
Como podemos melhorar o clube de vantagens com base nas informações do dashboard?
Qual é a taxa de conversão de novos usuários em usuários ativos do clube de vantagens?
Qual é a taxa de retenção de usuários do clube de vantagens?
Qual é o ROI (retorno sobre o investimento) do clube de vantagens?

]]

--comentario
-- Feito pelo Pierre (Quantidade de clientes na base de cadastro + Clientes novos / pelos clientes inativos ou de exclusão de conta)

require("adicionais")

novos_usuarios = 0

function novo_formulario(faxa_etaria,cadastrado,usa_o_app,frequencia_uso,beneficio_favorito,usa_resgates,sujestao_melhoria,extra,e_mail)
  return {
    faxa_etaria = faxa_etaria,
    cadastrado = cadastrado,
    usa_o_app = usa_o_app,
    frequencia_uso = frequencia_uso,
    beneficio_favorito = beneficio_favorito,
    usa_resgates = usa_resgates,
    sujestao_melhoria = sujestao_melhoria,
    extra = extra,
    e_mail = e_mail,
  }
end

formularios = {
  novo_formulario("18 - 25 anos",false,"Uso semanlmente","Semanalmente","Facilidade de pagamento","","O aplicativo é muito bom no geral, não tenho críticas só elogios","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Qualidade dos produtos oferecidos",false,"","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Facilidade de pagamento","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Qualidade dos produtos oferecidos",false,"","",""),
  novo_formulario("46-55 anos",false,"Nunca Utilizei","não uso","Descontos e vantagens exclusivas",false,"Melhorar a divulgação ","Melhorar a agilidade no atendimento ",""),
  novo_formulario("36 - 45 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Descontos e vantagens exclusivas","","","",""),
  novo_formulario("46-55 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Descontos e vantagens exclusivas",false,"Desconto","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Descontos e vantagens exclusivas","","","Muito bom! Parabéns pela iniciativa. Para contribuir na redação do formulário, informo que na 3ª pergunta, o correto é escrever: Você UTILIZA o aplicativo do Ipiranga? ",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","Outros",false,"Não sei","Na mesma pergunta a palavra semanalmente está escrita errada. ",""),
  novo_formulario("Mais de 55 anos",false,"Nunca Utilizei","não uso","","","","",""),
  novo_formulario("18 - 25 anos",true,"Uso ocasionalmente","Ocasionalmente","Qualidade dos produtos oferecidos",false,"","",""),
  novo_formulario("46-55 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("Mais de 55 anos",false,"Nunca Utilizei","não uso","Descontos e vantagens exclusivas",false,"Não tenho o clube de vantagem. Portanto não posso opinar.","",""),
  novo_formulario("46-55 anos",false,"Nunca Utilizei","não uso","Outros",false,"Nao sei informar","",""),
  novo_formulario("26 - 35 anos",false,"Nunca Utilizei","não uso","","","","O aplicativo fica muito tempo fora do ar",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros","","","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros",true,"","",""),
  novo_formulario("18 - 25 anos",false,"Nunca Utilizei","não uso","Outros",false,"não uso o aplicativo não sabia de sua existencia, acredito que sempre da para melhorar ","vou dar uma olhada no seu app",""),
}



function adicionar_formulario(formulario)
  formularios[tablelength(formularios) + 1] = deepcopy(formulario)
  novos_usuarios = novos_usuarios + 1
end

function zerar_novos_usuarios()
  novos_usuarios = 0
end

function numero_pessoas_cadrastadas()
  local ret = 0
  for index, value in ipairs(formularios) do
    if value.cadastrado == true then
      ret = ret + 1
    end
  end
  return ret
end

function numero_clientes_inativos() 
  ret = 0
  for index, value in ipairs(formularios) do
    if value.usa_o_app == "Nunca Utilizei" then
      ret = ret + 1
    end
  end
  return ret
end

function pegar_taxa_de_retencao() 
  ret = (numero_pessoas_cadrastadas() + novos_usuarios) / numero_clientes_inativos()
  return ret
end

function dados_formulario()
  print("numero de cadastros: ",numero_pessoas_cadrastadas())
  print("clientes_inativos: ",numero_clientes_inativos() )
  print("taxa de retenção:",(pegar_taxa_de_retencao() * 100) .. "%" )
end
