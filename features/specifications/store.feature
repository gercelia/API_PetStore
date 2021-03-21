#language: pt
@store
Funcionalidade: Petstore de Gercélia
    validar operações da API Store


Cenario: Consultar inventário dos pets
Quando faço um GET no endpoint Inventory
Entao o retorno dele será todo o invetário dos pets por status



Cenario: Realizar compra de um pet
Quando faço um POST no endpoint Order
Então um novo pedido será cadastrado
