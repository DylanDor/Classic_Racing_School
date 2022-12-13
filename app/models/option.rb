class Option < ApplicationRecord
    has_many :cart_items
    has_many :order_items
    has_many :carts, through: :cart_items
    has_many :orders, through: :order_items

    validates :title, presence: true, length: {in: 3..300, message: "Le Titre doit avoir une longueur comprise entre 3 and 300 caractères" }
    validates :description, presence: true, length: {in: 10..2000, message: "La Description doit avoir une longueur comprise entre 10 and 1000 caractères" }
    validates :quantity, presence: true, numericality: {greater_than: 0, message: "La Quantité doit être positive"}
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0, message: "Le Prix doit être positif ou égal à zéro"}
    validates :img_url, presence: true
end
