class Book < ApplicationRecord
  belongs_to :author

  def self.search(query)
    if query !="" && query !=nil
      author = Author.where('name LIKE ?', "%#{query}%").first
      if author 
        return self.where(author_id: author.id).includes(:author).references(:author)
      else 
        return self.all.includes(:author).references(:author)
      end
    else 
      return self.all.includes(:author).references(:author)
    end
  end 
end
