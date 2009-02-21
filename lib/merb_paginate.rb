require 'will_paginate/collection'
require 'merb_paginate/finders'
require 'merb_paginate/view_helpers'

if defined?(Merb::Plugins)
  Merb::BootLoader.after_app_loads do
    # Load in the ORM Helpers as needed
    if Object.const_defined? "DataMapper"
      require 'merb_paginate/finders/datamapper'
      DataMapper::Resource.class_eval { include MerbPaginate::Finders::Datamapper }
    end

    if Object.const_defined? "Sequel"
      require 'merb_paginate/finders/sequel'
      SequelModel::Base.class_eval { include MerbPaginate::Finders::Sequel }
    end

    if Object.const_defined? "ActiveRecord"
      require 'merb_paginate/finders/activerecord'
      ActiveRecord::Base.class_eval { include MerbPaginate::Finders::Activerecord }
    end
  end
end