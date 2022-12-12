class AddUserInformations < ActiveRecord::Migration[7.0]
  def change
    ## FORMULAIRE USER'S INFORMATIONS
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :newsletter, :boolean
    add_column :users, :phone, :string
    add_column :users, :welcome_day, :date
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :clothing_size, :string
    add_column :users, :helmet_size, :string
    add_column :users, :shoe_size, :string
    add_column :users, :driving_experience, :string
    add_column :users, :driving_experience_specifics, :text
    add_column :users, :coaching_expectations, :text
    add_column :users, :food_restriction, :text
    add_column :users, :number_of_companions, :integer
    add_column :users, :address, :string
    add_column :users, :medical_contraindication, :text
    add_column :users, :how_know_CRS, :text
    add_column :users, :people_who_recommended, :text
    add_column :users, :comments_to_organization, :text
    add_column :users, :photo_publication_consent, :boolean
    add_column :users, :instagram_nickname, :string
    add_column :users, :personal_data_consent, :boolean
  end
end
