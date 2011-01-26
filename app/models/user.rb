class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :agency

  # TODO: Remove this after we implement agency admin abilities
  after_create :link_to_default_agency
  def link_to_default_agency
    agency = Agency.first || Agency.create(:name => "Widget Works Marketing")
    update_attribute(:agency, Agency.first)
  end
end
