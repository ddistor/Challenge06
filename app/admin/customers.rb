# frozen_string_literal: true

ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
