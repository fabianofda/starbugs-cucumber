#language: pt

Funcionalidade: Pedidos

    Como um usuario do site Starbugs, eu quero selecionar e comprar cafes
    Para que eu possa receber os produtos em meu endereco e efetuar o pagamento na entrega

Cenario: Compra bem sucedida

    Dado que estou na pagina princicial da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faco a busca do seguinte CEP "04534011"
        E informo os demais dados do endereco:
        | numero      | 1000    |
        | complemento | apto 22 |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra
    Entao sou redirecionando para a pagina de confirmacao de Pedidos
        E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"
