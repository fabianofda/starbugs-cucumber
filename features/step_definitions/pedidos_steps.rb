Dado('que iniciei a compra do item {string}') do |nome_produto|
  @home.compra(nome_produto)
end

Quando('faco a busca do seguinte CEP {string}') do |codigo_postal|
  @checkout.buscar_cep(codigo_postal)
end

Quando('informo os demais dados do endereco:') do |table|
  @checkout.formulario_endereco(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |tipo_pagamento|
  @checkout.escolher_pagamento(tipo_pagamento)
end

Quando('por fim finalizo a compra') do
  @checkout.submeter
end

Entao('sou redirecionando para a pagina de confirmacao de Pedidos') do
  @pedido.confirmarcao_pedido
end

Entao('deve ser informado o seguinte prazo de entrega: {string}') do |tempo_entrega|
  @pedido.tempo_entrega(tempo_entrega)
end
