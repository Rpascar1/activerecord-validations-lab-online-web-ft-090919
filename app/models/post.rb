class Post < ActiveRecord::Base
  @title = "Won't Believe" || "Guess" || "Top" || "Secret"
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :title, format: { with: (/#{@title}/i) }
end
