require 'rspec'

class CheckoutPage
  include Capybara::DSL
  include RSpec::Matchers

  def detalhes_produto(produto)
    titulo_produto = find('.item-details h1')
    expect(titulo_produto.text).to eql produto[:nome]

    preco_produto = find('.sub-price')
    expect(preco_produto.text).to eql produto[:preco]

    frete = find('.delivery-price')
    expect(frete.text).to eql produto[:frete]
  end

  def preco_total(value)
    preco_total = find('.total-price')
    expect(preco_total.text).to eql value
  end

  def buscar_cep(cep)
    find('input[name=cep]').set(cep)
    click_on 'Buscar CEP'
  end

  def formulario_endereco(endereco)
    find('input[name=number]').set(endereco[:numero])
    find('input[name=complement]').set(endereco[:complemento])
  end

  def escolher_pagamento(tipo_pagamento)
    find('label div', text: tipo_pagamento.upcase).click
  end

  def submeter
    click_on 'Confirmar pedido'
  end

  def set_desconto(cupom)
    find('input[placeholder="Código do cupom"]').set(cupom)
    click_on 'Aplicar'
  end

  def mensagem_aviso(text)
    mensagem = find('.notice').text
    expect(mensagem).to eql text
  end

end
