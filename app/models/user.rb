class User < ApplicationRecord
  include Authenticable

  def to_param
    username
  end

  def first_name
    full_name.split.first
  end
end
