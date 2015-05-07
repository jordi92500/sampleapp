

if Rails.env.production?
require 'rubygems'
require 'fog'

storage = Fog::Storage.new({
  :local_root => '~/fog',
  :provider   => 'Local'
})

end