# frozen_string_literal: true

require_relative "lib/cms_core/version"

Gem::Specification.new do |spec|
  spec.name = "cms_core"
  spec.version = CmsCore::VERSION
  spec.authors = ["zhang hong"]
  spec.email = ["zhanghong_bean@126.com"]

  spec.summary = "cms core module"
  spec.description = "This is cms project's core module"
  spec.homepage = "https://cms.laifuz.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://cms.laifuz.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://cms.laifuz.com"
  spec.metadata["changelog_uri"] = "https://cms.laifuz.com/change_logs.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 8.0.2"
  spec.add_development_dependency "rspec"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
