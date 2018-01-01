class Owner < ActiveRecord::Base
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,
         :authentication_keys => [:login]


  validates :phnumber,
  :presence => true,
  :uniqueness => true

   validates :email,
  :presence => true,
  :uniqueness => true

  has_many :products

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'

  # attr_accessor :login 
  # OR 

  def login=(login)
    @login = login
  end

  def login
    @login || self.phnumber || self.email
  end

    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_hash).where(["lower(phnumber) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:phnumber) || conditions.has_key?(:email)
        where(conditions.to_hash).first
      end
    end
end
