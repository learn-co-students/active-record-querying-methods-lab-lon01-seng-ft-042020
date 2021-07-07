class Show < ActiveRecord::Base

    
    def self.highest_rating
        Show.maximum(:rating)
    end
    
    def self.most_popular_show
        # Show.find_by(rating: self.highest_rating)
        # self.order(rating: :desc).first
        self.where("rating = ?", self.highest_rating).first
    end 
    
    def self.lowest_rating
        Show.minimum(:rating)
    end 
    
    def self.least_popular_show
        # Show.find_by(rating: self.lowest_rating)
        Show.order(:rating).first
    end 
    
    def self.ratings_sum
        # binding.pry
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > 5")
        # self.where("rating >= ?", 5)
    end 

    def self.shows_by_alphabetical_order
        # Show.order(name: :asc)
        # Show.order("name")
        Show.order(:name)
    end 

end 


# use pry: binding.pry above name of method and check code on pry, 
# to invoke pry, exit form pry "exit!"