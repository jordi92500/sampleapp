

if Rails.env.production?
require 'rubygems'
require 'fog'

CarrierWave.configure do |config|
 config.cache_dir = "#{Rails.root}/tmp/uploads"
end

end