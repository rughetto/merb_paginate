PLUGIN = "merb_paginate"
NAME = "merb_paginate"
GEM_VERSION = "0.0.6"
AUTHOR = "Nathan Herald"
EMAIL = "nathan@myobie.com"
HOMEPAGE = "http://github.com/myobie/merb_paginate"
SUMMARY = "A pagination library for Merb that uses will_paginate internally"

Gem::Specification.new do |s|
  s.name = NAME
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README", "LICENSE", 'TODO']
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.add_dependency("merb-core", ">=0.9")
  s.add_dependency("will_paginate", ">=2.2.0")
  s.require_path = 'lib'
  s.autorequire = PLUGIN
  s.files = %w(LICENSE README Rakefile TODO) + ["lib/merb_paginate", "lib/merb_paginate/core_ext.rb", "lib/merb_paginate/finders", "lib/merb_paginate/finders/activerecord.rb", "lib/merb_paginate/finders/datamapper.rb", "lib/merb_paginate/finders/generic.rb", "lib/merb_paginate/finders/sequel.rb", "lib/merb_paginate/finders.rb", "lib/merb_paginate/view_helpers.rb", "lib/merb_paginate.rb"]
end