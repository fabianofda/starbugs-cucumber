require 'rspec'

class Popup
  include Capybara::DSL
  include RSpec::Matchers

  def texto_esperado(text)
    popup = find('div.swal2-html-container')
    expect(popup.text).to eql text
  end
end
