Quando("faço um GET no endpoint Inventory") do
  @get_inventory = HTTParty.get "https://petstore.swagger.io/v2/store/inventory"
end

Entao("o retorno dele será todo o invetário dos pets por status") do
  puts @get_inventory.body
  puts "Quantidade de posts: " + @get_inventory.size.to_s
  puts @get_inventory.message
  puts @get_inventory.code
  expect(@get_inventory.code).to eq 200
end

Quando("faço um POST no endpoint Order") do
  @body = {

    "id": 0,
    "petId": 0,
    "quantity": 0,
    "shipDate": "2021-03-18T14:10:27.125Z",
    "status": "placed",
    "complete": true,

  }.to_json

  @post_pedido = HTTParty.post "https://petstore.swagger.io/v2/store/order",
                               :body => @body,
                               :headers => { "Content-Type" => "application/json" }
end

Então("um novo pedido será cadastrado") do
  puts @post_pedido.body
  puts @post_pedido.message
  expect(@post_pedido.code).to eq 200
end
