class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  #after_create :welcome_send

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_one :cart

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true, length: {in: 3..100, message: "First Name lenght must be between 3 and 100" }
  validates :last_name, presence: true, length: {in: 3..100, message: "Last Name lenght must be between 3 and 100" }
  validates :birthday, presence: true, if: :in_the_past
  validates :newsletter, presence: true
  validates :phone, presence: true
  validates :height, presence: true, numericality: {greater_than_or_equal_to: 0, message: "Height must be positive"}
  validates :weight, presence: true, numericality: {greater_than_or_equal_to: 0, message: "Weight must be positive"}
  validates :clothing_size, presence: true
  validates :helmet_size, presence: true
  validates :shoe_size, presence: true
  validates :driving_experience, presence: true
  validates :driving_experience_specifics, presence: true, length: {in: 1..1000, message: "Drinving Experience Specifics lenght must be between 1 and 1000" }
  validates :coaching_expectations, presence: true, length: {in: 1..1000, message: "Coaching Expectations lenght must be between 1 and 1000" }
  validates :food_restriction, presence: true, length: {in: 1..1000, message: "Food Restriction lenght must be between 1 and 1000" }
  validates :address, presence: true, length: {in: 10..250, message: "Address lenght must be between 10 and 250" }
  validates :medical_contraindication, presence: true, length: {in: 1..1000, message: "Medical Contraindication lenght must be between 1 and 1000" }
  validates :how_know_CRS, presence: true
  validates :people_who_recommended, presence: true, length: {in: 1..1000, message: "People who recommended lenght must be between 1 and 1000" }
  validates :comments_to_organization, presence: true, length: {in: 1..1000, message: "Comments to Organization lenght must be between 1 and 1000" }
  validates :photo_publication_consent, presence: true
  validates :instagram_nickname, presence: true, length: {in: 1..1000, message: "Instagram Nickname lenght must be between 1 and 1000" }
  validates :personal_data_consent, presence: true

  def in_the_past
    errors.add(:birthday, "You can't be born in the future...") unless birthday < Date.now
  end

  private
  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  after_create do |user|
    self.cart ||= Cart.create(user: user)
  end
end
