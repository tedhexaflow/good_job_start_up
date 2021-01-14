# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def page
    render template: 'page'
  end
end
