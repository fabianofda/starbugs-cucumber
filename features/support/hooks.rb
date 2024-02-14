
require_relative  './pages/home.rb'
require_relative  './pages/checkout.rb'
require_relative './pages/componentes.rb'
require_relative './pages/pedido.rb'

Before do
  @home = HomePage.new
  @checkout = CheckoutPage.new
  @popup = Popup.new
  @pedido = PedidoPage.new
end

After do |scenario|
  if(scenario.failed?)
      print = page.save_screenshot("report/screenshots/#{scenario.__id__}.png")
    attach(print, "image/png", "Screenshot")
  end
end
