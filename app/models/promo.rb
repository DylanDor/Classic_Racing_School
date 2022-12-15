class Promo < ApplicationRecord
    validates :name, presence: true, length: {in: 3..300, message: "Le Code Promo doit avoir une longueur comprise entre 3 and 300 caractères" }
    validates :discount, presence: true, numericality: {greater_than: 0, message: "La valeur Discount doit être positive et supérieure à 0.00"}

    private

    def create_stripe_promocode
        
    end
end
