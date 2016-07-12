class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :tweets, dependent: :destroy
    has_many :favorites, dependent: :destroy

end

# deviseのみで何もいじらない
# validationいらない