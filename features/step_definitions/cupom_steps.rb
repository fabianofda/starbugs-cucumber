
Dado('que iniciei a compra do item:') do |table|
 @produto = table.rows_hash

 @home.abrir
 @home.compra(@produto[:nome])
end

Quando('aplico o seguinte cupom: {string}') do |cupom|
  @checkout.set_desconto(cupom)
end

Entao('o valor final da compra deve ser atualizado para {string}') do |preco_total|
  @checkout.preco_total(preco_total)
end

Entao('devo ver a notificacao: {string}') do |mensagem|
  @checkout.mensagem_aviso(mensagem)
end

Entao('o valor final deve permanecer o mesmo') do
  @checkout.preco_total(@produto[:total])
end
