class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true

  has_and_belongs_to_many :tags
  has_many :ratings


  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
    validates_attachment :image, presence: true,
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
      size: { in: 0..10.megabytes }

  def avg_rating
     sum = 0.0
       ratings.each { |r| sum += r.rating.to_f }
       sum/ratings.length
   end

end
