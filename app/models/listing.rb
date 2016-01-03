class Listing < ActiveRecord::Base
  def self.search(query)
    if query
      where('address LIKE ?', "%#{query}%")
    else
      all
    end
  end
end