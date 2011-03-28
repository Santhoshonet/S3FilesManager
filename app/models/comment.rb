class Comment < ActiveRecord::Base
    belongs_to :document

    validates_presence_of :comment, :authentication_id, :document_id
end
