class Product

    attr_accessor :name, :value,:id,:type


    def initialize (name,value,id,type)
        @name = name
        @value = value
        @id = id
        @type = type
    end

        def use

            if type == 'summer'

                pp "#{name}, posso usar no verao"
            end 
        end
end

    product1 = Product.new 't-shirt','40$','1','summer'
    product2 = Product.new 'jeans','50$','2','various'
    product3 = Product.new 'shorts','20$','3','summer'


pp product3.use
