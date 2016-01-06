class Mall < ActiveRecord::Base
    
    # This method belows overrides the url param so that we use
    # :name instead of :id
    def to_param
      name
    end
end
