class Restaurant < ActiveRecord::Base
    has_many :dishes
    validates :name, presence: true

    def self.mcdonalds
      self.find_by(name: 'McDonalds')
    end

    def self.tenth
      self.limit(1).offset(9) 
    end

    def self.with_long_names
      self.where("length(name) > 12")
    end

    def self.max_dishes
    end

    def self.focused
    end

    def self.large_menu
    end

    def self.vegetarian
    end

    def self.name_like(name)
    end

    def self.name_not_like(name)
    end
end
