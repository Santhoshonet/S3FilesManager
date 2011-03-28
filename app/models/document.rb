class Document < ActiveRecord::Base
    belongs_to :project
    belongs_to :category
    has_many :comments
    has_many :histories

    validates_presence_of :name, :project_id
    validates_uniqueness_of :name

  def addhistory_new(currentuserid)
    history = define_history(currentuserid)
    history.description = "Uploaded a new document."
    history.save
  end

  def addhistory_version(currentuserid)
    history = define_history(currentuserid)
    history.description = "Uploaded a new version."
    history.save
  end

  private
  def define_history(currentuserid)
    history = History.new
    history.document_id = self.id
    history.authentication = currentuserid
    history
  end

end
