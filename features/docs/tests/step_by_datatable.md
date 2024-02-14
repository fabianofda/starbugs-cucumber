Quando('acesso a pagina principal da starbugs') do
  visit 'https://starbugs.vercel.app/'
end

Entao('eu deve ver uma lista de cafes disponiveis') do
  produtos = all('.coffee-item')
  expect(produtos.size).to be > 0
end

Dado('que estou na pagina princicial da Starbugs') do
  visit 'https://starbugs.vercel.app/'
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @produto = table.rows_hash
end

Quando('inicio a compra deste item') do
  produto = find('.coffee-item', text: @produto[:nome])
  produto.find('.buy-coffee').click
end

Entao('devo ver a pagina de Chechout com os detalhes do produto') do
  titulo_produto = find('.item-details h1')
  expect(titulo_produto.text).to eql @produto[:nome]

  preco_produto = find('.sub-price')
  expect(preco_produto.text).to eql @produto[:preco]

  frete = find('.delivery-price')
  expect(frete.text).to eql @produto[:frete]

end

Entao('o valor total da compra deve ser {string}') do |preco_total|
  preco = find('.total-price')
  expect(preco.text).to eql preco_total
end

Entao('devo ver um popup informando que o produto esta indisponivel') do
  popup = find('div.swal2-html-container')
  expect(popup.text).to eql 'Produto indisponível'
end
