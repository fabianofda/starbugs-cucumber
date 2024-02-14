

class HomePage
  include Capybara::DSL

  def abrir
    visit 'https://starbugs-qa.vercel.app/'
  end

  def lista_cafe
    return all('.coffee-item')
  end

  def compra(nome_cafe)
    produto = find('.coffee-item', text: nome_cafe)
    produto.find('.buy-coffee').click
  end

end
