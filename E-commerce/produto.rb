class Product

    attr_accessor :name, :value_dolar,:id,:type, :category


    def initialize (name,value_dolar,id,type,category,stock=[])
        @name = name
        @value_dolar = value_dolar
        @id = id
        @type = type
        @category = category
        @stock = stock
    end

        def use

            if type == 'parte de baixo'

                pp "#{name}, posso usar no verao"
            end 
        end


# e um método pra verificar o stock

        def remove_stock
            if @stock > 0
                @stock -=1

            puts "Uma unidade foi removida. Novo stock: #{@stock}"

            else 
                puts "Acabou o stock"
        end 
        end 
end

    product1 = Product.new't-shirt',40,1,'parte de cima','roupa',4
    product2 = Product.new 'jeans',50,2,'parte de baixo','roupa',4
    product3 = Product.new 'shorts',20,3,'parte de baixo','roupa',4


# product1.remove_stock

pp product3.use




# Desafio 4




class Store < Product

    attr_accessor :name, :id, :catalogo


    def initialize (name,id,catalogo=[])
        
        @name = name
        @id = id
        @catalogo = catalogo
        
    end 

    def add_product(product)
        @catalogo << product
    end 



    # Método comprar produto / Vender produto -> loja

    def buy_product(products)
        products.remove_stock
    end


    def stock_store(products)
        @catalogo.count(products)
    end 

    def remove_product(product)
        @catalogo.delete(product)
    end
end


store01 = Store.new("loja sanches",01)


store01.add_product(product1)

# pp store01.catalogo


# store01.remove_product(product1)

store01.buy_product(product1)

# pp store01.buy_product(1)

pp store01

