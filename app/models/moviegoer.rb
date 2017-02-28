class Moviegoer < ApplicationRecord
  def self.create_with_omniauth(auth)
    Moviegoer.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
      
  end
  def id
    self.id
  end
end
