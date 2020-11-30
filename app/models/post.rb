class Post < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates_with PostValidator
  validate :must_be_clickbait
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def must_be_clickbait
    if [/Won't Believe/, /Secret/, /Top/, /Guess/].none? { |bait| bait.match title }
      errors.add(:title, "not clickbaity enough")
    end
  end
end
