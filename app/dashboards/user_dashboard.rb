require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    address: Field::String,
    birthday: Field::Date,
    cart: Field::HasOne,
    clothing_size: Field::String,
    coaching_expectations: Field::Text,
    comments_to_organization: Field::Text,
    driving_experience: Field::String,
    driving_experience_specifics: Field::Text,
    email: Field::String,
    encrypted_password: Field::String,
    first_name: Field::String,
    food_restriction: Field::Text,
    height: Field::Number,
    helmet_size: Field::String,
    how_know_CRS: Field::Text,
    instagram_nickname: Field::String,
    last_name: Field::String,
    medical_contraindication: Field::Text,
    newsletter: Field::Boolean,
    people_who_recommended: Field::Text,
    personal_data_consent: Field::Boolean,
    phone: Field::String,
    photo_publication_consent: Field::Boolean,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    shoe_size: Field::String,
    weight: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    address
    birthday
    cart
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    address
    birthday
    cart
    clothing_size
    coaching_expectations
    comments_to_organization
    driving_experience
    driving_experience_specifics
    email
    encrypted_password
    first_name
    food_restriction
    height
    helmet_size
    how_know_CRS
    instagram_nickname
    last_name
    medical_contraindication
    newsletter
    people_who_recommended
    personal_data_consent
    phone
    photo_publication_consent
    remember_created_at
    reset_password_sent_at
    reset_password_token
    shoe_size
    weight
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    address
    birthday
    cart
    clothing_size
    coaching_expectations
    comments_to_organization
    driving_experience
    driving_experience_specifics
    email
    encrypted_password
    first_name
    food_restriction
    height
    helmet_size
    how_know_CRS
    instagram_nickname
    last_name
    medical_contraindication
    newsletter
    people_who_recommended
    personal_data_consent
    phone
    photo_publication_consent
    remember_created_at
    reset_password_sent_at
    reset_password_token
    shoe_size
    weight
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
