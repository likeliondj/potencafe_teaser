class Contact < ActiveRecord::Base
  # attr_accessible :title, :body

  validates_uniqueness_of     :email,
    :message => "이미 등록된 이메일입니다."

end
