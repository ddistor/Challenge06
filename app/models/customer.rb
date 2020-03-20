# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :notes, presence: true

  has_one_attached :image
end
