Merb.logger.info("Compiling routes...")
Merb::Router.prepare do |r|
  r.resources :posts
  r.match('/').to(:controller => 'Posts').name(:root)
end