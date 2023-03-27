class Bartender
    attr_accessor :name
    
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end
  
    def intro
      "Hello, my name is #{self.name}!"
    end

    def make_drink
        @cocktail_ingredients = []
        choose_liqour
        choose_mixer
        choose_garnish
        "Here is your drink. It contains #{@cocktail_ingredients}."
    end

    private

    def choose_liqour
        @cocktail_ingredients << "vodka"
    end

    def choose_mixer
        @cocktail_ingredients << "tonic"
    end

    def choose_garnish
        @cocktail_ingredients << "lime"
    end
end
  
phil = Bartender.new("Phil")
mercy = Bartender.new("Mercy")

# puts Bartender.all
# puts phil.intro

puts phil.make_drink # => "Here is your drink. It contains ["vodka", "tonic", "lime"]."