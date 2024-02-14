Quando('acesso a pagina principal da starbugs') do
  @home.abrir
end

Entao('eu deve ver uma lista de cafes disponiveis') do
  expect(@home.lista_cafe.size).to be > 0
end

Dado('que estou na pagina princicial da Starbugs') do
  @home.abrir
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @produto = table.rows_hash
end

Quando('inicio a compra deste item') do
  @home.compra(@produto[:nome])
end

Entao('devo ver a pagina de Chechout com os detalhes do produto') do
  @checkout.detalhes_produto(@produto)
end

Entao('o valor total da compra deve ser {string}') do |preco_total|
  @checkout.preco_total(preco_total)
end

Entao('devo ver um popup informando que o produto esta indisponivel') do
  @popup.texto_esperado('Produto indisponível')
end
