#language: pt
Funcionalidade: Validar o retorno da chave typeOfEstablishment

Eu, como QA participante do teste pratico
Desejo validar o retorno da chave e exibir um estababelecimento
Para concluir o teste pratico.

@get
Cenario: Validando retorno da chave typeOfEstablishment e exibindo um estabelecimento

  Dado que eu faça um GET no endpoint VRPAT
  Quando o retorno da requisicao for 200
  Então devo validar se a requisicao possui a chave typeOfEstablishment e exibir o estababelecimento

