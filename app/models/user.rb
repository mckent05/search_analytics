# frozen_string_literal: true

class User < ApplicationRecord
  has_many :queries, dependent: :destroy
end
