module Rest
  class Store
    include HTTParty

    headers "Content-Type" => "application/json"
    base_uri CONFIG["base_uri"]

    #metodo para buscar todos os inventorios
    def get_findInventory
      self.class.get("/store/inventory")
    end
  end
end
