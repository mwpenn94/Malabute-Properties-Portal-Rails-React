class PagesController < ApplicationController

  def home
    redirect_to articles_path if logged_in?
  end

  def about
  end

  def contact_us
  end

  def sample_deal
  end
  
  def privacy_policy
  end

  def terms_of_service
  end
end