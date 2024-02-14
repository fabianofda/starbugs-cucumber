

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout,
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Cenario: Aplicar Desconto de 20%

    Dado que estou na pagina de checkout
        E o item que esta no meu carrinho e o Café com Leite no valor de "R$ 19,99"
        E que a taxa de entrega e de "R$ 10,00"
        E o valor total e de "R$ 29,99"
        E tenho um cupon de 20% de desconto "MEUCAFE"
    Quando aplico este cupom de desconto
    Entao o desconto de 20% deve ser aplicado apenas no valor do Cafe com Leite
        E o valor final da compra deve ser atualizado para "25,99" 

    Cenario: Cupom Expirado

    Dado que estou na pagina de checkout
        E o item que esta no meu carrinho e o Café com Leite no valor de "R$ 19,99"
        E que a taxa de entrega e de "R$ 10,00"
        E o valor total e de "R$ 29,99"            
        E tenho um cupom que está expirado "PROMO20"
    Quando aplico este cupom de desconto
    Entao devo ver a seguinte notificacao "Cupom expirado!"
        E o valor final deve permanecer o mesmo
   
    Cenario: Cupom Inválido

    Dado que estou na pagina de checkout
        E o item que esta no meu carrinho e o Café com Leite no valor de "R$ 19,99"
        E que a taxa de entrega e de "R$ 10,00"
        E o valor total e de "R$ 29,99"            
        E tenho um cupom com o codigo inválido "PROMO000"
    Quando aplico este cupom de desconto
    Entao devo ver a seguinte notificacao "Cupom inválido!"
        E o valor final deve permanecer o mesmo