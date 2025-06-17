require_relative "lib/core/version"

Gem::Specification.new do |spec|
  spec.name        = "core"
  spec.version     = Core::VERSION
  spec.authors     = ["zhang hong"]
  spec.email       = ["zhanghong_bean@126.com"]
  spec.homepage    = "https://cms.laifuz.com"
  spec.summary     = "cms core module"
  spec.description = "This is cms project's core module"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://cms.laifuz.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://cms.laifuz.com"
  spec.metadata["changelog_uri"] = "https://cms.laifuz.com/change_logs.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
end
