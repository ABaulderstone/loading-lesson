class Book < ApplicationRecord
  belongs_to :author

  def self.search(query)
    if query
      author = Author.find_by(name: query)
      if author 
        return self.where(author_id: author.id).includes(:author).references(:author)
      else 
        return self.all
      end
    else 
      return self.all
    end
  end 
end
