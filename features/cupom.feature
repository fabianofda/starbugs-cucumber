#language:pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout,
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Contexto:
        Dado que iniciei a compra do item:
        | nome  | Café com Leite |
        | preco | R$ 19,99       |
        | frete | R$ 10,00       |
        | total | R$ 29,99       |

    Cenario: Aplicar Desconto de 20%

    Quando aplico o seguinte cupom: "MEUCAFE"
    Entao o valor final da compra deve ser atualizado para "R$ 25,99" 

    Cenario: Cupom Expirado

    Quando aplico o seguinte cupom: "PROMO20"
    Entao devo ver a notificacao: "Cupom expirado!"
        E o valor final deve permanecer o mesmo
   
    Cenario: Cupom Inválido

    Quando aplico o seguinte cupom: "PROMO000"
    Entao devo ver a notificacao: "Cupom inválido!"
        E o valor final deve permanecer o mesmo


    @ddt
    Esquema do Cenario: Tentativa de aplicar desconto sem sucesso

    Quando aplico o seguinte cupom: "<cupon>"
    Entao devo ver a notificacao: "<mensagem>"
        E o valor final deve permanecer o mesmo

    Exemplos:
    | cupon     | mensagem        |
    | PROMO20   | Cupom expirado! |
    | PROMO000  | Cupom inválido! |