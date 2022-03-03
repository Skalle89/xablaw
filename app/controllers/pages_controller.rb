class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :computers
  skip_before_action :authenticate_user!, only: :users

  def home; end
end
