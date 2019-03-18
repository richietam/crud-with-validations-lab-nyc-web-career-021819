class Song < ApplicationRecord

  validates :title, presence: true
  #title cannot be repeated by same artist in same year
  validates :released, inclusion: { in: [true, false]}
  validates :release_year, numericality: { only_integer: true}

  # validates :artist_name, format: { with: /\A[a-zA-Z]+\z, message: "only letters"}
  #
  # validates :genre, format: { with: /\A[a-zA-Z]+\z, message: "only letters"}
end
