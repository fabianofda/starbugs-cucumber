#language: pt

Funcionalidade: Catalogo de cafes

    Como um usuario do site, eu quero ver o Catalogo de cafes na pagina principal
    para que eu possa escolher e saber mais sobre os produtos disponivel

Cenario: Acessar o catalogo de cafes da pagina principal

    Quando acesso a pagina principal da starbugs
    Entao eu deve ver uma lista de cafes disponiveis


Cenario: Iniciar a compra de um cafe

    Dado que estou na pagina princicial da Starbugs
        E que desejo comprar o seguinte produto:
        | nome    | Expresso Gelado | 
        | preco   | R$ 9,99         |
        | frete   | R$ 10,00        |
    Quando inicio a compra deste item
    Entao devo ver a pagina de Chechout com os detalhes do produto
        E o valor total da compra deve ser "R$ 19,99"
@temp
Cenario: Cafe indisponivel

    Dado que estou na pagina princicial da Starbugs
        E que desejo comprar o seguinte produto:
        | nome    | Expresso Cremoso | 
    Quando inicio a compra deste item
    Entao devo ver um popup informando que o produto esta indisponivel    
