# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  image_url  :string           not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :bigint           not null
#
# Indexes
#
#  index_artworks_on_artist_id            (artist_id)
#  index_artworks_on_image_url            (image_url) UNIQUE
#  index_artworks_on_title_and_artist_id  (title,artist_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => users.id)
#
class Artwork < ApplicationRecord
  validate :artist_id, uniqueness: { scope: :title,
    message: "Artist should not have artworks with identical titles"}
  
  validates :image_url, presence: true, uniqueness: true
  validates :title, presence: true
  validates :artist_id, presence: true, uniqueness: true
  
  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User
    
end
