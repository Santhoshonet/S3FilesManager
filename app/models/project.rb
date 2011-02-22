class Project < ActiveRecord::Base
    validates_presence_of :name , :message => "please input project name"
    validates_uniqueness_of :name, :message => "the project name you entered is already exists."
end
