class Product

    attr_accessor :name, :value,:id,:type, :category


    def initialize (name,value,id,type,category,stock=[])
        @name = name
        @value = value
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

        def remove_stock
            if @stock > 0
                @stock -=1

            puts "Uma unidade foi removida. Novo stock: #{@stock}"

            else 
                puts "Acabou o stock"
        end 
        end 
end

    product1 = Product.new't-shirt','40$','1','parte de cima','roupa',4
    product2 = Product.new 'jeans','50$','2','parte de baixo','roupa',4
    product3 = Product.new 'shorts','20$','3','parte de baixo','roupa',4


product1.remove_stock

pp product3.use




# Desafio 4


# Método comprar produto / Vender produto -> loja

# Método verificar estoque -> loja

# e um método pra verificar o stock



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


    def buy_product(product)
        @catalogo.delete(product)
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

pp store01.catalogo


# store01.remove_product(product1)

# stock01.buy_product(@stock)

pp store01.stock_store(product1)
