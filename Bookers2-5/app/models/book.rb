class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
  
  
  def self.search(word,search)
    if search == "perfect"
      @book = Book.where("title LIKE?","#{word}")
    elsif search == "forward"
      @book = Book.where("title LIKE?","#{word}%")
    elsif search == "backward"
      @book = Book.where("title LIKE?","%#{word}")
    else
      @book = Book.where("title LIKE?","%#{word}%")
    end
  end
  
end