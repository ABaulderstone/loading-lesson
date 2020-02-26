class Book < ApplicationRecord
  belongs_to :author

  def self.search(query)
    if query
      author = Author.find_by(name)
    end 
  
  end 
end
