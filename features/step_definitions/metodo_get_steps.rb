Dado('que eu faça um GET no endpoint VRPAT') do
  #aqui coloquei o endpoint dentro da variavel
  @get_VRPAT = RegisterService.get '/'
end

Quando('o retorno da requisicao for {int}') do |int|
  #aqui estou esperando que o retorno da requisicao seja com status 200
  expect(@get_VRPAT.code).to eq 200
end

Entao('devo validar se a requisicao possui a chave typeOfEstablishment e exibir o estababelecimento') do
  #aqui estou validando que a chave typeOfEstablishment não é nula
  expect(@get_VRPAT["typeOfEstablishment"]).not_to be nil
    #aqui estou embaralhando o retorno da chave typeOfEstablishment e printando somente 1 estabelecimento
  puts (@get_VRPAT["typeOfEstablishment"]).shuffle.first
end

