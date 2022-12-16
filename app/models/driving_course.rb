class DrivingCourse < ApplicationRecord

    enum product_type: { main: 0, option: 1 }

    has_many :cart_items, dependent: :destroy
    has_many :order_items
    has_many :carts, through: :cart_items
    has_many :orders, through: :order_items

    validates :title, presence: true, length: {in: 3..300, message: "Le Titre du Stage doit avoir une longueur comprise entre 3 and 300 caractères"}
    validates :description, presence: true, length: {in: 10..2000, message: "La Description du Stage doit avoir une longueur comprise entre 10 and 1000 caractères"}
    validates :date, presence: true, if: -> {product_type == 0 }, comparison: {greater_than: DateTime.now, message: "Vous ne pouvez pas créer un Stage de Pilotage dans le passé"}
    validates :quantity, presence: true, if: -> {product_type == 0 }, numericality: {greater_than: 0, message: "La Quantité doit être positive"}
    validates :price, presence: true, numericality: {greater_than: 0, message: "Le Prix doit être positif"}
    validates :img_url, presence: true
end