# frozen_string_literal: true

class Query < ApplicationRecord
  belongs_to :user

  scope :existing_query, lambda {|parts|
          where(parts.map { |_part| 'query LIKE ?' }.join(' OR '), *parts.map do |part|
                                                                     "%#{part}%"
                                                                   end)
        }
end
