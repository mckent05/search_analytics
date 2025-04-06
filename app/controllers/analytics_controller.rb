# frozen_string_literal: true

class AnalyticsController < ApplicationController
  def query_analytics
    Query.joins(:user).group_by(&:query).transform_values(&:count)
  end
end
