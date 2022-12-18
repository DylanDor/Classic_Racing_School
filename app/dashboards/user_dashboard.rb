require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    cart: Field::HasOne,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    birthday: Field::Date,
    newsletter: Field::Boolean,
    phone: Field::String,
    height: Field::Number,
    weight: Field::Number,
    clothing_size: Field::String,
    helmet_size: Field::String,
    shoe_size: Field::String,
    driving_experience: Field::String,
    driving_experience_specifics: Field::Text,
    coaching_expectations: Field::Text,
    food_restriction: Field::Text,
    address: Field::String,
    medical_contraindication: Field::Text,
    how_know_CRS: Field::Text,
    people_who_recommended: Field::Text,
    comments_to_organization: Field::Text,
    photo_publication_consent: Field::Boolean,
    instagram_nickname: Field::String,
    personal_data_consent: Field::Boolean,
    admin: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    email
    first_name
    last_name
    newsletter
    cart
    admin
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    cart
    id
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
    created_at
    updated_at
    first_name
    last_name
    birthday
    newsletter
    phone
    height
    weight
    clothing_size
    helmet_size
    shoe_size
    driving_experience
    driving_experience_specifics
    coaching_expectations
    food_restriction
    address
    medical_contraindication
    how_know_CRS
    people_who_recommended
    comments_to_organization
    photo_publication_consent
    instagram_nickname
    personal_data_consent
    admin
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    cart
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
    first_name
    last_name
    birthday
    newsletter
    phone
    height
    weight
    clothing_size
    helmet_size
    shoe_size
    driving_experience
    driving_experience_specifics
    coaching_expectations
    food_restriction
    address
    medical_contraindication
    how_know_CRS
    people_who_recommended
    comments_to_organization
    photo_publication_consent
    instagram_nickname
    personal_data_consent
    admin
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
