class User
  include Her::Model
  use_api RAILS_GARAGE

  attributes :name, :email
  validates :name, presence: true
  validate :validate_uniq_name

  def validate_uniq_name
    users = User.all
    users.each do |u|
      if u.name == name
        errors.add(:name) unless u.id == id
      end
    end
  end
end