class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
   validates :name, :provider, :uid, presence: true
  def set_default_role
    # if User.count == 0
    #   self.role ||= :admin
    # else
    #   self.role ||= :user
    # end
    self.role = :user
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      elsif auth['user_info']
         user.name = auth['user_info']['name'] || ""
      end
    end
  end
  
end
