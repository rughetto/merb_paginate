require 'merb_paginate'
require 'merb_paginate/core_ext'

# Load in the ORM Helpers as needed

if const_defined? "DataMapper"
  require 'merb_paginate/finders/datamapper'; DataMapper::Base.class_eval { include MerbPaginate::Finders::Datamapper }

if const_defined? "Sequel"
  require 'merb_paginate/finders/sequel'; SequelModel::Base.class_eval { include MerbPaginate::Finders::Sequel }

if const_defined? "ActiveRecord"
  require 'merb_paginate/finders/activerecord'; ActiveRecord::Base.class_eval { include MerbPaginate::Finders::Activerecord }
