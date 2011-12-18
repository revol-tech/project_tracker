class Project < ActiveRecord::Base
has_many :persons

def team
#get all persons in project and retrun
end
end
