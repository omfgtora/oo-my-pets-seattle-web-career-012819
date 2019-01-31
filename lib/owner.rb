class Owner

  attr_accessor :name, :pets
  attr_reader :species
  attr_writer

  @@all = []

  def initialize(species)
    @name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."    
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def feed_fish
    @pets[:fishes].each {|fish|
      fish.mood = "happy"
    }
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def play_with_cats
    @pets[:cats].each {|cat|
      cat.mood = "happy"
    }
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog|
      dog.mood = "happy"
    }
  end

  def sell_pets
    @pets.values.flatten.each{|pet|
      pet.mood = "nervous"
    }
    @pets = {}
  end
end