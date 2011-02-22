class Authentication < ActiveRecord::Base

  validates_presence_of :username, :password

  validates_format_of :username, :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]>> +)*(\.[a-z]{2,4})$}i

  validates_uniqueness_of :username


end
