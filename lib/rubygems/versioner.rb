module Gem
  module Versioner
    def self.release_version(gem_version)
      if ENV.key?('PRE_RELEASE')
        version = "#{gem_version}.pre.#{ENV.fetch('PRE_RELEASE').gsub(/[^[:alnum:]]/, '')}.#{Time.now.strftime('%Y%m%d%H%M%S')}"
        puts "Building pre-release version #{version}"
        version
      else
        gem_version
      end
    end
  end
end