class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :first_name, allow_blank: true, length: {in: 3..100, message: "Votre Nom doit avoir une longueur comprise entre 3 and 100 caractères"}
  validates :last_name, allow_blank: true, length: {in: 3..100, message: "Votre Prénom doit avoir une longueur comprise entre 3 and 100 caractères"}
  validates :birthday, allow_blank: true, comparison: {less_than: Date.today, message: "Conflit temporel : Vous ne pouvez pas être né dans le futur..."}
  validates :height, allow_blank: true, numericality: {greater_than: 0, message: "Votre taille doit être positive"}
  validates :weight, allow_blank: true, numericality: {greater_than: 0, message: "Votre poids doit être positif"}
  validates :driving_experience_specifics, allow_blank: true, length: {in: 1..1000, message: "Les détails de votre Expérience de Pilotage doivent avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :coaching_expectations, allow_blank: true, length: {in: 1..1000, message: "Vos Attentes de Coaching doivent avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :food_restriction, allow_blank: true, length: {in: 1..1000, message: "Vos Restrictions Alimentaires doivent avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :address, allow_blank: true, length: {in: 10..250, message: "Votre Adresse doit avoir une longueur comprise entre 10 et 250 caractères"}
  validates :medical_contraindication, allow_blank: true, length: {in: 1..1000, message: "Vos Contre-indications Médicales doivent avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :people_who_recommended, allow_blank: true, length: {in: 1..1000, message: "La liste des Personnes qui vous ont recommandé notre entreprise doit avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :comments_to_organization, allow_blank: true, length: {in: 1..1000, message: "Vos Commentaires concernant l'Organisation doivent avoir une longueur comprise entre 1 et 1000 caractères"}
  validates :instagram_nickname, allow_blank: true, length: {in: 3..250, message: "Votre pseudo Instagram doit avoir une longueur comprise entre 3 et 250 caractères"}

  private
  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  after_create do |user|
    self.cart ||= Cart.create(user: user)
  end
end
