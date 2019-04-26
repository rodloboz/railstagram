class User < ApplicationRecord
  include Authenticable
  include Followable

  def to_param
    username
  end

  def first_name
    full_name.split.first
  end
end
